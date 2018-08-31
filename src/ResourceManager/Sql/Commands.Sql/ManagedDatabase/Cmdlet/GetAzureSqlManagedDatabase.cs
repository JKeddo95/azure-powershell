// ----------------------------------------------------------------------------------
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

using Microsoft.Azure.Commands.Sql.ManagedDatabase.Model;
using Microsoft.Azure.Commands.Sql.ManagedInstance.Model;
using Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters;
using Microsoft.Azure.Management.Internal.Resources.Utilities.Models;
using System.Collections.Generic;
using System.Management.Automation;

namespace Microsoft.Azure.Commands.Sql.ManagedDatabase.Cmdlet
{
    [Cmdlet(VerbsCommon.Get, "AzureRmSqlManagedDatabase",
        DefaultParameterSetName = GetByNameAndResourceGroupParameterSet),
        OutputType(typeof(AzureSqlManagedDatabaseModel))]
    public class GetAzureSqlManagedDatabase : AzureSqlManagedDatabaseCmdletBase<IEnumerable<AzureSqlManagedDatabaseModel>>
    {
        protected const string GetByNameAndResourceGroupParameterSet =
            "GetManagedDatabaseByInputParameters";

        protected const string GetByResourceIdParameterSet =
            "GetManagedDatabaseByAzureResourceId";

        protected const string GetByInputObjectParameterSet =
            "GetManagedDatabaseByManagedInstanceObject";

        /// <summary>
        /// Gets or sets the name of the managed database to use.
        /// </summary>
        [Parameter(ParameterSetName = GetByNameAndResourceGroupParameterSet,
            Mandatory = false,
            Position = 0,
            HelpMessage = "The name of the Azure SQL Managed Database to retrieve.")]
        [Parameter(ParameterSetName = GetByResourceIdParameterSet,
            Mandatory = false,
            Position = 0,
            HelpMessage = "The name of the Azure SQL Managed Database to retrieve.")]
        [Parameter(ParameterSetName = GetByInputObjectParameterSet,
            Mandatory = false,
            Position = 0,
            HelpMessage = "The name of the Azure SQL Managed Database to retrieve.")]
        [Alias("ManagedDatabaseName")]
        [ValidateNotNullOrEmpty]
        public string Name { get; set; }

        /// <summary>
        /// Gets or sets the name of the Azure Sql Managed Instance
        /// </summary>
        [Parameter(ParameterSetName = GetByNameAndResourceGroupParameterSet,
            Mandatory = true,
            Position = 1,
            HelpMessage = "The Azure Sql Managed Instance name.")]
        [ValidateNotNullOrEmpty]
        public override string ManagedInstanceName { get; set; }

        /// <summary>
        /// Gets or sets the name of the resource group to use.
        /// </summary>
        [Parameter(ParameterSetName = GetByNameAndResourceGroupParameterSet,
            Mandatory = true,
            Position = 2,
            HelpMessage = "The name of the resource group.")]
        [ResourceGroupCompleter]
        [ValidateNotNullOrEmpty]
        public override string ResourceGroupName { get; set; }

        /// <summary>
        /// Gets or sets the resource id of the Managed instance to get
        /// </summary>
        [Parameter(ParameterSetName = GetByResourceIdParameterSet,
            Mandatory = true,
            Position = 0,
            ValueFromPipelineByPropertyName = true,
            HelpMessage = "The resource id of Managed Instance object to get")]
        [ValidateNotNullOrEmpty]
        public string ManagedInstanceResourceId { get; set; }

        /// <summary>
        /// AzureSqlManagedInstanceModel object to get
        /// </summary>
        [Parameter(ParameterSetName = GetByInputObjectParameterSet,
            Mandatory = true,
            Position = 0,
            ValueFromPipeline = true,
            HelpMessage = "The AzureSqlManagedInstanceModel object to use for getting Managed database")]
        [ValidateNotNullOrEmpty]
        public AzureSqlManagedInstanceModel ManagedInstanceObject { get; set; }

        /// <summary>
        /// Get the entities from the service
        /// </summary>
        /// <returns>The list of entities</returns>
        protected override IEnumerable<AzureSqlManagedDatabaseModel> GetEntity()
        {
            ICollection<AzureSqlManagedDatabaseModel> results;

            if (string.Equals(this.ParameterSetName, GetByResourceIdParameterSet, System.StringComparison.OrdinalIgnoreCase))
            {
                var resourceInfo = new ResourceIdentifier(ManagedInstanceResourceId);

                ResourceGroupName = resourceInfo.ResourceGroupName;
                ManagedInstanceName = resourceInfo.ResourceName;

                if (MyInvocation.BoundParameters.ContainsKey("Name"))
                {
                    results = new List<AzureSqlManagedDatabaseModel>();
                    results.Add(ModelAdapter.GetManagedDatabase(this.ResourceGroupName, this.ManagedInstanceName, this.Name));
                }
                else
                {
                    results = ModelAdapter.ListManagedDatabases(this.ResourceGroupName, this.ManagedInstanceName);
                }
            }
            else if (string.Equals(this.ParameterSetName, GetByInputObjectParameterSet, System.StringComparison.OrdinalIgnoreCase))
            {
                ResourceGroupName = ManagedInstanceObject.ResourceGroupName;
                ManagedInstanceName = ManagedInstanceObject.ManagedInstanceName;

                if (MyInvocation.BoundParameters.ContainsKey("Name"))
                {
                    results = new List<AzureSqlManagedDatabaseModel>();
                    results.Add(ModelAdapter.GetManagedDatabase(this.ResourceGroupName, this.ManagedInstanceName, this.Name));
                }
                else
                {
                    results = ModelAdapter.ListManagedDatabases(this.ResourceGroupName, this.ManagedInstanceName);
                }
            }
            else if (MyInvocation.BoundParameters.ContainsKey("Name"))
            {
                results = new List<AzureSqlManagedDatabaseModel>();
                results.Add(ModelAdapter.GetManagedDatabase(this.ResourceGroupName, this.ManagedInstanceName, this.Name));
            }
            else
            {
                results = ModelAdapter.ListManagedDatabases(this.ResourceGroupName, this.ManagedInstanceName);
            }

            return results;
        }

        /// <summary>
        /// No user input to apply to model
        /// </summary>
        /// <param name="model">Model retrieved from service</param>
        /// <returns>The model that was passed in</returns>
        protected override IEnumerable<AzureSqlManagedDatabaseModel> ApplyUserInputToModel(IEnumerable<AzureSqlManagedDatabaseModel> model)
        {
            return model;
        }

        /// <summary>
        /// No changes to persist to managed instance
        /// </summary>
        /// <param name="entity">The output of apply user input to model</param>
        /// <returns>The input entity</returns>
        protected override IEnumerable<AzureSqlManagedDatabaseModel> PersistChanges(IEnumerable<AzureSqlManagedDatabaseModel> entity)
        {
            return entity;
        }
    }
}
