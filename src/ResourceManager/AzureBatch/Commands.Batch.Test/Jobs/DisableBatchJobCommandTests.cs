﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using System;
using Microsoft.Azure.Batch;
using Microsoft.Azure.Batch.Protocol;
using Microsoft.WindowsAzure.Commands.ScenarioTest;
using Moq;
using System.Collections.Generic;
using System.Management.Automation;
using Microsoft.Rest.Azure;
using Xunit;
using BatchCommon = Microsoft.Azure.Batch.Common;
using ProxyModels = Microsoft.Azure.Batch.Protocol.Models;
using BatchClient = Microsoft.Azure.Commands.Batch.Models.BatchClient;

namespace Microsoft.Azure.Commands.Batch.Test.Jobs
{
    public class DisableBatchJobCommandTests : WindowsAzure.Commands.Test.Utilities.Common.RMTestBase
    {
        private DisableBatchJobCommand cmdlet;
        private Mock<BatchClient> batchClientMock;
        private Mock<ICommandRuntime> commandRuntimeMock;

        public DisableBatchJobCommandTests()
        {
            batchClientMock = new Mock<BatchClient>();
            commandRuntimeMock = new Mock<ICommandRuntime>();
            cmdlet = new DisableBatchJobCommand()
            {
                CommandRuntime = commandRuntimeMock.Object,
                BatchClient = batchClientMock.Object,
            };
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void DisableJobParametersTest()
        {
            BatchAccountContext context = BatchTestHelpers.CreateBatchContextWithKeys();
            cmdlet.BatchContext = context;
            cmdlet.Id = null;

            Assert.Throws<ArgumentNullException>(() => cmdlet.ExecuteCmdlet());

            cmdlet.Id = "testJob";
            cmdlet.DisableJobOption = BatchCommon.DisableJobOption.Terminate;

            // Don't go to the service on a Disable CloudJob call
            RequestInterceptor interceptor = BatchTestHelpers.CreateFakeServiceResponseInterceptor<ProxyModels.JobDisableParameter, ProxyModels.JobDisableOptions, AzureOperationHeaderResponse<ProxyModels.JobDisableHeaders>>();
            cmdlet.AdditionalBehaviors = new List<BatchClientBehavior>() { interceptor };

            // Verify no exceptions when required parameter is set
            cmdlet.ExecuteCmdlet();
        }

        [Fact]
        [Trait(Category.AcceptanceType, Category.CheckIn)]
        public void DisableJobRequestTest()
        {
            BatchAccountContext context = BatchTestHelpers.CreateBatchContextWithKeys();
            cmdlet.BatchContext = context;

            BatchCommon.DisableJobOption disableOption = BatchCommon.DisableJobOption.Terminate;
            ProxyModels.DisableJobOption? requestDisableOption = ProxyModels.DisableJobOption.Requeue;

            cmdlet.Id = "testJob";
            cmdlet.DisableJobOption = disableOption;

            // Don't go to the service on a Disable CloudJob call
            Action<BatchRequest<ProxyModels.JobDisableParameter, ProxyModels.JobDisableOptions, AzureOperationHeaderResponse<ProxyModels.JobDisableHeaders>>> extractDisableOptionAction =
                (request) =>
                {
                    requestDisableOption = request.Parameters.DisableTasks;
                };
            RequestInterceptor interceptor = BatchTestHelpers.CreateFakeServiceResponseInterceptor(requestAction: extractDisableOptionAction);
            cmdlet.AdditionalBehaviors = new List<BatchClientBehavior>() { interceptor };

            cmdlet.ExecuteCmdlet();

            // Verify that the job disable option was properly set on the outgoing request
            Assert.Equal(disableOption.ToString().ToLower(), requestDisableOption.ToString().ToLower());
        }
    }
}
