@{
  GUID = '4ff17caf-76fc-409a-2e23-b96989751cb1'
  RootModule = './Az.Network.psm1'
  ModuleVersion = '0.0.1'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: Network cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.Network.private.dll'
  FormatsToProcess = './Az.Network.format.ps1xml'
  CmdletsToExport = 'Get-AzApplicationGateway', 'Get-AzApplicationGatewayAvailableInfo', 'Get-AzApplicationGatewayAvailableSslOption', 'Get-AzApplicationGatewayAvailableSslPredefinedPolicy', 'Get-AzApplicationGatewayAvailableWafRuleSet', 'Get-AzApplicationGatewayBackendHealth', 'Get-AzApplicationGatewaySslPredefinedPolicy', 'Get-AzApplicationGatewayWafPolicy', 'Get-AzApplicationSecurityGroup', 'Get-AzBgpServiceCommunity', 'Get-AzDdosCustomPolicy', 'Get-AzDdosProtectionPlan', 'Get-AzDefaultSecurityRule', 'Get-AzExpressRouteCircuit', 'Get-AzExpressRouteCircuitArpTable', 'Get-AzExpressRouteCircuitAuthorization', 'Get-AzExpressRouteCircuitConnection', 'Get-AzExpressRouteCircuitPeering', 'Get-AzExpressRouteCircuitRouteTableSummary', 'Get-AzExpressRouteCircuitStatistic', 'Get-AzExpressRouteConnection', 'Get-AzExpressRouteCrossConnection', 'Get-AzExpressRouteCrossConnectionArpTable', 'Get-AzExpressRouteCrossConnectionPeering', 'Get-AzExpressRouteCrossConnectionRouteTableSummary', 'Get-AzExpressRouteGateway', 'Get-AzExpressRouteLink', 'Get-AzExpressRoutePort', 'Get-AzExpressRoutePortsLocation', 'Get-AzExpressRouteRouteTable', 'Get-AzExpressRouteServiceProvider', 'Get-AzFirewall', 'Get-AzFirewallFqdnTag', 'Get-AzInterfaceEndpoint', 'Get-AzLoadBalancer', 'Get-AzLoadBalancerBackendAddressPool', 'Get-AzLoadBalancerFrontendIPConfiguration', 'Get-AzLoadBalancerInboundNatRule', 'Get-AzLoadBalancerLoadBalancingRule', 'Get-AzLoadBalancerNetworkInterface', 'Get-AzLoadBalancerOutboundRule', 'Get-AzLoadBalancerProbe', 'Get-AzLocalNetworkGateway', 'Get-AzNatGateway', 'Get-AzNetworkInterface', 'Get-AzNetworkInterfaceEffectiveNsg', 'Get-AzNetworkInterfaceEffectiveRouteTable', 'Get-AzNetworkInterfaceIPConfiguration', 'Get-AzNetworkInterfaceLoadBalancer', 'Get-AzNetworkInterfaceTapConfiguration', 'Get-AzNetworkProfile', 'Get-AzNetworkSecurityRule', 'Get-AzNetworkUsage', 'Get-AzNetworkWatcher', 'Get-AzNetworkWatcherAvailableProvider', 'Get-AzNetworkWatcherConnectionMonitor', 'Get-AzNetworkWatcherConnectionMonitorState', 'Get-AzNetworkWatcherFlowLogStatus', 'Get-AzNetworkWatcherNetworkConfigurationDiagnostic', 'Get-AzNetworkWatcherNextHop', 'Get-AzNetworkWatcherPacketCapture', 'Get-AzNetworkWatcherPacketCaptureStatus', 'Get-AzNetworkWatcherReachabilityReport', 'Get-AzNetworkWatcherTopology', 'Get-AzNetworkWatcherTroubleshootingResult', 'Get-AzNetworkWatcherVMSecurityRule', 'Get-AzNsg', 'Get-AzP2SVpnGateway', 'Get-AzP2SVpnServerConfiguration', 'Get-AzPeerExpressRouteCircuitConnection', 'Get-AzPublicIPAddress', 'Get-AzPublicIPPrefix', 'Get-AzRouteFilter', 'Get-AzRouteFilterRule', 'Get-AzRouteTable', 'Get-AzRouteTableRoute', 'Get-AzServiceEndpointPolicy', 'Get-AzServiceEndpointPolicyDefinition', 'Get-AzVirtualHub', 'Get-AzVirtualHubVnetConnection', 'Get-AzVirtualWan', 'Get-AzVirtualWanSupportedSecurityProvider', 'Get-AzVnet', 'Get-AzVnetAvailableEndpointService', 'Get-AzVnetAvailableSubnetDelegation', 'Get-AzVnetGateway', 'Get-AzVnetGatewayAdvertisedRoute', 'Get-AzVnetGatewayBgpPeerStatus', 'Get-AzVnetGatewayConnection', 'Get-AzVnetGatewayConnectionSharedKey', 'Get-AzVnetGatewayLearnedRoute', 'Get-AzVnetGatewaySupportedVpnDevice', 'Get-AzVnetGatewayVpnClientIPsecPolicy', 'Get-AzVnetGatewayVpnDeviceConfigurationScript', 'Get-AzVnetGatewayVpnProfilePackageUrl', 'Get-AzVnetPeering', 'Get-AzVnetSubnet', 'Get-AzVnetTap', 'Get-AzVnetUsage', 'Get-AzVpnConnection', 'Get-AzVpnGateway', 'Get-AzVpnSite', 'Get-AzVpnSiteConfiguration', 'New-AzApplicationGateway', 'New-AzApplicationGatewayWafPolicy', 'New-AzApplicationSecurityGroup', 'New-AzDdosCustomPolicy', 'New-AzDdosProtectionPlan', 'New-AzExpressRouteCircuit', 'New-AzExpressRouteCircuitAuthorization', 'New-AzExpressRouteCircuitConnection', 'New-AzExpressRouteCircuitPeering', 'New-AzExpressRouteConnection', 'New-AzExpressRouteCrossConnection', 'New-AzExpressRouteCrossConnectionPeering', 'New-AzExpressRouteGateway', 'New-AzExpressRoutePort', 'New-AzFirewall', 'New-AzInterfaceEndpoint', 'New-AzLoadBalancer', 'New-AzLoadBalancerInboundNatRule', 'New-AzLocalNetworkGateway', 'New-AzNatGateway', 'New-AzNetworkInterface', 'New-AzNetworkInterfaceTapConfiguration', 'New-AzNetworkProfile', 'New-AzNetworkSecurityRule', 'New-AzNetworkWatcher', 'New-AzNetworkWatcherConnectionMonitor', 'New-AzNetworkWatcherPacketCapture', 'New-AzNsg', 'New-AzP2SVpnGateway', 'New-AzP2SVpnGatewayVpnProfile', 'New-AzP2SVpnServerConfiguration', 'New-AzPublicIPAddress', 'New-AzPublicIPPrefix', 'New-AzRouteFilter', 'New-AzRouteFilterRule', 'New-AzRouteTable', 'New-AzRouteTableRoute', 'New-AzServiceEndpointPolicy', 'New-AzServiceEndpointPolicyDefinition', 'New-AzVirtualHub', 'New-AzVirtualWan', 'New-AzVnet', 'New-AzVnetGateway', 'New-AzVnetGatewayConnection', 'New-AzVnetGatewayVpnClientPackage', 'New-AzVnetGatewayVpnProfile', 'New-AzVnetPeering', 'New-AzVnetSubnet', 'New-AzVnetTap', 'New-AzVpnConnection', 'New-AzVpnGateway', 'New-AzVpnSite', 'Remove-AzApplicationGateway', 'Remove-AzApplicationGatewayWafPolicy', 'Remove-AzApplicationSecurityGroup', 'Remove-AzDdosCustomPolicy', 'Remove-AzDdosProtectionPlan', 'Remove-AzExpressRouteCircuit', 'Remove-AzExpressRouteCircuitAuthorization', 'Remove-AzExpressRouteCircuitConnection', 'Remove-AzExpressRouteCircuitPeering', 'Remove-AzExpressRouteConnection', 'Remove-AzExpressRouteCrossConnectionPeering', 'Remove-AzExpressRouteGateway', 'Remove-AzExpressRoutePort', 'Remove-AzFirewall', 'Remove-AzInterfaceEndpoint', 'Remove-AzLoadBalancer', 'Remove-AzLoadBalancerInboundNatRule', 'Remove-AzLocalNetworkGateway', 'Remove-AzNatGateway', 'Remove-AzNetworkInterface', 'Remove-AzNetworkInterfaceTapConfiguration', 'Remove-AzNetworkProfile', 'Remove-AzNetworkSecurityRule', 'Remove-AzNetworkWatcher', 'Remove-AzNetworkWatcherConnectionMonitor', 'Remove-AzNetworkWatcherPacketCapture', 'Remove-AzNsg', 'Remove-AzP2SVpnGateway', 'Remove-AzP2SVpnServerConfiguration', 'Remove-AzPublicIPAddress', 'Remove-AzPublicIPPrefix', 'Remove-AzRouteFilter', 'Remove-AzRouteFilterRule', 'Remove-AzRouteTable', 'Remove-AzRouteTableRoute', 'Remove-AzServiceEndpointPolicy', 'Remove-AzServiceEndpointPolicyDefinition', 'Remove-AzVirtualHub', 'Remove-AzVirtualWan', 'Remove-AzVnet', 'Remove-AzVnetGateway', 'Remove-AzVnetGatewayConnection', 'Remove-AzVnetPeering', 'Remove-AzVnetSubnet', 'Remove-AzVnetTap', 'Remove-AzVpnConnection', 'Remove-AzVpnGateway', 'Remove-AzVpnSite', 'Reset-AzVnetGateway', 'Reset-AzVnetGatewayConnectionSharedKey', 'Reset-AzVnetGatewayVpnClientSharedKey', 'Set-AzApplicationGateway', 'Set-AzApplicationGatewayWafPolicy', 'Set-AzApplicationSecurityGroup', 'Set-AzDdosCustomPolicy', 'Set-AzDdosProtectionPlan', 'Set-AzExpressRouteCircuit', 'Set-AzExpressRouteCircuitAuthorization', 'Set-AzExpressRouteCircuitConnection', 'Set-AzExpressRouteCircuitPeering', 'Set-AzExpressRouteConnection', 'Set-AzExpressRouteCrossConnection', 'Set-AzExpressRouteCrossConnectionPeering', 'Set-AzExpressRouteGateway', 'Set-AzExpressRoutePort', 'Set-AzFirewall', 'Set-AzInterfaceEndpoint', 'Set-AzLoadBalancer', 'Set-AzLoadBalancerInboundNatRule', 'Set-AzLocalNetworkGateway', 'Set-AzNatGateway', 'Set-AzNetworkInterface', 'Set-AzNetworkInterfaceTapConfiguration', 'Set-AzNetworkProfile', 'Set-AzNetworkSecurityRule', 'Set-AzNetworkWatcher', 'Set-AzNetworkWatcherConnectionMonitor', 'Set-AzNetworkWatcherFlowLogConfiguration', 'Set-AzNsg', 'Set-AzP2SVpnGateway', 'Set-AzP2SVpnServerConfiguration', 'Set-AzPublicIPAddress', 'Set-AzPublicIPPrefix', 'Set-AzRouteFilter', 'Set-AzRouteFilterRule', 'Set-AzRouteTable', 'Set-AzRouteTableRoute', 'Set-AzServiceEndpointPolicy', 'Set-AzServiceEndpointPolicyDefinition', 'Set-AzVirtualHub', 'Set-AzVirtualWan', 'Set-AzVnet', 'Set-AzVnetGateway', 'Set-AzVnetGatewayConnection', 'Set-AzVnetGatewayConnectionSharedKey', 'Set-AzVnetGatewayVpnClientIPsecPolicy', 'Set-AzVnetPeering', 'Set-AzVnetSubnet', 'Set-AzVnetSubnetNetworkPolicy', 'Set-AzVnetTap', 'Set-AzVpnConnection', 'Set-AzVpnGateway', 'Set-AzVpnSite', 'Start-AzApplicationGateway', 'Start-AzNetworkWatcherConnectionMonitor', 'Start-AzNetworkWatcherTroubleshooting', 'Stop-AzApplicationGateway', 'Stop-AzNetworkWatcherConnectionMonitor', 'Stop-AzNetworkWatcherPacketCapture', 'Test-AzDnsNameAvailability', 'Test-AzDummy', 'Test-AzNetworkWatcherConnectivity', 'Test-AzNetworkWatcherIPFlow', 'Test-AzVnetIPAddressAvailability', 'Update-AzRouteFilter', 'Update-AzRouteFilterRule', 'Update-AzServiceEndpointPolicy', '*'
  AliasesToExport = 'Get-AzApplicationGatewayAvailableServerVariableAndHeader', 'Get-AzApplicationGatewayAvailableSslOptions', 'Get-AzApplicationGatewayAvailableWafRuleSets', 'Get-AzApplicationGatewayFirewallPolicy', 'Get-AzExpressRouteCircuitStats', 'Get-AzExpressRouteCircuitRouteTable', 'Get-AzExpressRouteCrossConnectionRouteTable', 'Get-AzNetworkInterfaceVirtualMachineScaleSetNetworkInterface', 'Get-AzNetworkInterfaceVirtualMachineScaleSetVMNetworkInterface', 'Get-AzEffectiveNetworkSecurityGroup', 'Get-AzNetworkInterfaceEffectiveNetworkSecurityGroup', 'Get-AzEffectiveRouteTable', 'Get-AzNetworkInterfaceVirtualMachineScaleSetIPConfiguration', 'Get-AzNetworkInterfaceTapConfig', 'Get-AzNetworkWatcherReachabilityProvidersList', 'Get-AzNetworkWatcherConnectionMonitorReport', 'Invoke-AzNetworkWatcherNetworkConfigurationDiagnostic', 'Get-AzNetworkSecurityGroup', 'Get-AzPublicIPAddressVirtualMachineScaleSetPublicIPAddress', 'Get-AzPublicIPAddressVirtualMachineScaleSetVmpublicIPAddress', 'Get-AzVirtualHubVirtualNetworkConnection', 'Get-AzVirtualNetwork', 'Get-AzVirtualNetworkAvailableEndpointService', 'Get-AzAvailableServiceDelegation', 'Get-AzVirtualNetworkAvailableSubnetDelegation', 'Get-AzVirtualNetworkGateway', 'Get-AzVirtualNetworkGatewayAdvertisedRoute', 'Get-AzVirtualNetworkGatewayBgpPeerStatus', 'Get-AzVirtualNetworkGatewayConnection', 'Get-AzVirtualNetworkGatewayConnectionSharedKey', 'Get-AzVirtualNetworkGatewayLearnedRoute', 'Get-AzVirtualNetworkGatewaySupportedVpnDevice', 'Get-AzVpnClientIpsecParameter', 'Get-AzVirtualNetworkGatewayVpnClientIPsecParameter', 'Get-AzVirtualNetworkGatewayConnectionVpnDeviceConfigScript', 'Get-AzVirtualNetworkGatewayVpnDeviceConfigurationScript', 'Get-AzVirtualNetworkGatewayVpnProfilePackageUrl', 'Get-AzVirtualNetworkPeering', 'Get-AzVirtualNetworkSubnet', 'Get-AzVirtualNetworkTap', 'Get-AzVirtualNetworkUsageList', 'Get-AzVirtualNetworkUsage', 'New-AzNetworkSecurityGroup', 'New-AzVirtualNetwork', 'New-AzVirtualNetworkGateway', 'New-AzVirtualNetworkGatewayConnection', 'Get-AzVpnClientPackage', 'New-AzVirtualNetworkGatewayVpnClientPackage', 'New-AzVirtualNetworkGatewayVpnProfile', 'New-AzVirtualNetworkPeering', 'New-AzVirtualNetworkSubnet', 'New-AzVirtualNetworkTap', 'Remove-AzNetworkInterfaceTapConfig', 'Remove-AzNetworkSecurityGroup', 'Remove-AzVirtualNetwork', 'Remove-AzVirtualNetworkGateway', 'Remove-AzVirtualNetworkGatewayConnection', 'Remove-AzVirtualNetworkPeering', 'Remove-AzVirtualNetworkSubnet', 'Remove-AzVirtualNetworkTap', 'Reset-AzVirtualNetworkGateway', 'Reset-AzVirtualNetworkGatewayConnectionSharedKey', 'Reset-AzVirtualNetworkGatewayVpnClientSharedKey', 'Set-AzNetworkInterfaceTapConfig', 'Set-AzNetworkWatcherConfigFlowLog', 'Set-AzNetworkSecurityGroup', 'Set-AzVirtualNetwork', 'Set-AzVirtualNetworkGateway', 'Set-AzVirtualNetworkGatewayConnection', 'Set-AzVirtualNetworkGatewayConnectionSharedKey', 'Set-AzVpnClientIpsecParameter', 'Set-AzVirtualNetworkGatewayVpnClientIPsecParameter', 'Set-AzVirtualNetworkPeering', 'Set-AzVirtualNetworkSubnet', 'Set-AzVirtualNetworkSubnetNetworkPolicy', 'Set-AzVirtualNetworkTap', 'Start-AzNetworkWatcherResourceTroubleshooting', 'Test-AzDnsAvailability', 'Get-AzApplicationGatewayAuthenticationCertificate', 'Get-AzApplicationGatewayBackendAddressPool', 'Get-AzApplicationGatewayBackendHttpSettings', 'Get-AzApplicationGatewayConnectionDraining', 'Get-AzApplicationGatewayCustomError', 'Get-AzApplicationGatewayFrontendPort', 'Get-AzApplicationGatewayHttpListener', 'Get-AzApplicationGatewayHttpListenerCustomError', 'Get-AzApplicationGatewayIdentity', 'Get-AzApplicationGatewayRequestRoutingRule', 'Get-AzApplicationGatewayRewriteRuleSet', 'Get-AzApplicationGatewaySku', 'Get-AzApplicationGatewaySslCertificate', 'Get-AzApplicationGatewaySslPolicy', 'Get-AzApplicationGatewayTrustedRootCertificate', 'Get-AzDelegation', 'Get-AzVpnClientRevokedCertificate', 'Get-AzVpnClientRootCertificate', 'Move-AzExpressRouteCircuit', 'New-AzApplicationGatewayAuthenticationCertificate', 'New-AzApplicationGatewayBackendAddressPool', 'New-AzApplicationGatewayBackendHttpSettings', 'New-AzApplicationGatewayConnectionDraining', 'New-AzApplicationGatewayCustomError', 'New-AzApplicationGatewayFirewallCondition', 'New-AzApplicationGatewayFirewallCustomRule', 'New-AzApplicationGatewayFirewallMatchVariable', 'New-AzApplicationGatewayFirewallPolicy', 'New-AzApplicationGatewayFrontendPort', 'New-AzApplicationGatewayHttpListener', 'New-AzApplicationGatewayIdentity', 'New-AzApplicationGatewayProbeHealthResponseMatch', 'New-AzApplicationGatewayRequestRoutingRule', 'New-AzApplicationGatewayRewriteRule', 'New-AzApplicationGatewayRewriteRuleActionSet', 'New-AzApplicationGatewayRewriteRuleCondition', 'New-AzApplicationGatewayRewriteRuleSet', 'New-AzApplicationGatewaySku', 'New-AzApplicationGatewaySslCertificate', 'New-AzApplicationGatewaySslPolicy', 'New-AzApplicationGatewayTrustedRootCertificate', 'New-AzDelegation', 'New-AzFirewallApplicationRule', 'New-AzFirewallApplicationRuleCollection', 'New-AzFirewallNatRule', 'New-AzFirewallNatRuleCollection', 'New-AzFirewallNetworkRule', 'New-AzFirewallNetworkRuleCollection', 'Remove-AzApplicationGatewayAuthenticationCertificate', 'Remove-AzApplicationGatewayBackendAddressPool', 'Remove-AzApplicationGatewayBackendHttpSettings', 'Remove-AzApplicationGatewayConnectionDraining', 'Remove-AzApplicationGatewayCustomError', 'Remove-AzApplicationGatewayFirewallPolicy', 'Remove-AzApplicationGatewayFrontendPort', 'Remove-AzApplicationGatewayHttpListener', 'Remove-AzApplicationGatewayHttpListenerCustomError', 'Remove-AzApplicationGatewayIdentity', 'Remove-AzApplicationGatewayRequestRoutingRule', 'Remove-AzApplicationGatewayRewriteRuleSet', 'Remove-AzApplicationGatewaySslCertificate', 'Remove-AzApplicationGatewaySslPolicy', 'Remove-AzApplicationGatewayTrustedRootCertificate', 'Set-AzApplicationGatewayAuthenticationCertificate', 'Set-AzApplicationGatewayBackendAddressPool', 'Set-AzApplicationGatewayBackendHttpSettings', 'Set-AzApplicationGatewayConnectionDraining', 'Set-AzApplicationGatewayCustomError', 'Set-AzApplicationGatewayFirewallPolicy', 'Set-AzApplicationGatewayFrontendPort', 'Set-AzApplicationGatewayHttpListener', 'Set-AzApplicationGatewayHttpListenerCustomError', 'Set-AzApplicationGatewayIdentity', 'Set-AzApplicationGatewayRequestRoutingRule', 'Set-AzApplicationGatewayRewriteRuleSet', 'Set-AzApplicationGatewaySku', 'Set-AzApplicationGatewaySslCertificate', 'Set-AzApplicationGatewaySslPolicy', 'Set-AzApplicationGatewayTrustedRootCertificate', 'Remove-AzDelegation', 'New-AzVpnClientIpsecParameter', 'Remove-AzVpnClientIpsecParameter', 'New-AzIpsecPolicy', 'New-AzNetworkWatcherNetworkConfigurationDiagnosticProfile', 'New-AzPublicIpTag', 'New-AzVirtualHubRoute', 'New-AzVirtualHubRouteTable', 'New-AzVirtualHubVnetConnection', 'Remove-AzVirtualHubVnetConnection', 'New-AzVpnClientIpsecPolicy', 'New-AzVpnClientRevokedCertificate', 'New-AzVpnClientRootCertificate', 'Remove-AzVirtualNetworkGatewayDefaultSite', 'Remove-AzVpnClientRevokedCertificate', 'Remove-AzVpnClientRootCertificate', 'Resize-AzVirtualNetworkGateway', 'Set-AzVirtualNetworkGatewayDefaultSite', 'Update-AzVpnConnection', 'Add-AzApplicationGatewayAuthenticationCertificate', 'Add-AzApplicationGatewayBackendAddressPool', 'Add-AzApplicationGatewayBackendHttpSettings', 'Add-AzApplicationGatewayCustomError', 'Add-AzApplicationGatewayFrontendPort', 'Add-AzApplicationGatewayHttpListener', 'Add-AzApplicationGatewayHttpListenerCustomError', 'Add-AzApplicationGatewayRequestRoutingRule', 'Add-AzApplicationGatewayRewriteRuleSet', 'Add-AzApplicationGatewaySslCertificate', 'Add-AzApplicationGatewayTrustedRootCertificate', 'Add-AzDelegation', 'Add-AzExpressRouteCircuitAuthorization', 'Add-AzExpressRouteCrossConnectionPeering', 'Add-AzServiceEndpointPolicyDefinition', 'Add-AzVirtualNetworkPeering', 'Add-AzVpnClientRevokedCertificate', 'Add-AzVpnClientRootCertificate', 'Add-AzApplicationGatewayFrontendIPConfig', 'Add-AzApplicationGatewayIPConfiguration', 'Add-AzApplicationGatewayProbeConfig', 'Add-AzApplicationGatewayRedirectConfiguration', 'Add-AzApplicationGatewayUrlPathMapConfig', 'Add-AzExpressRouteCircuitConnectionConfig', 'Add-AzExpressRouteCircuitPeeringConfig', 'Add-AzLoadBalancerBackendAddressPoolConfig', 'Add-AzLoadBalancerFrontendIpConfig', 'Add-AzLoadBalancerInboundNatPoolConfig', 'Add-AzLoadBalancerInboundNatRuleConfig', 'Add-AzLoadBalancerOutboundRuleConfig', 'Add-AzLoadBalancerProbeConfig', 'Add-AzLoadBalancerRuleConfig', 'Add-AzNetworkInterfaceIpConfig', 'Add-AzNetworkInterfaceTapConfig', 'Add-AzNetworkSecurityRuleConfig', 'Add-AzRouteConfig', 'Add-AzRouteFilterRuleConfig', 'Add-AzVirtualNetworkGatewayIpConfig', 'Add-AzVirtualNetworkSubnetConfig', 'Get-AzApplicationGatewayAutoscaleConfiguration', 'Get-AzApplicationGatewayFrontendIPConfig', 'Get-AzApplicationGatewayIPConfiguration', 'Get-AzApplicationGatewayProbeConfig', 'Get-AzApplicationGatewayRedirectConfiguration', 'Get-AzApplicationGatewayUrlPathMapConfig', 'Get-AzApplicationGatewayWebApplicationFirewallConfiguration', 'Get-AzExpressRouteCircuitConnectionConfig', 'Get-AzExpressRouteCircuitPeeringConfig', 'Get-AzExpressRoutePortLinkConfig', 'Get-AzLoadBalancerBackendAddressPoolConfig', 'Get-AzLoadBalancerFrontendIpConfig', 'Get-AzLoadBalancerInboundNatPoolConfig', 'Get-AzLoadBalancerInboundNatRuleConfig', 'Get-AzLoadBalancerOutboundRuleConfig', 'Get-AzLoadBalancerProbeConfig', 'Get-AzLoadBalancerRuleConfig', 'Get-AzNetworkInterfaceIpConfig', 'Get-AzNetworkSecurityRuleConfig', 'Get-AzRouteConfig', 'Get-AzRouteFilterRuleConfig', 'Get-AzVirtualNetworkSubnetConfig', 'Get-AzVirtualWanVpnConfiguration', 'Get-AzVpnClientConfiguration', 'New-AzApplicationGatewayAutoscaleConfiguration', 'New-AzApplicationGatewayFirewallDisabledRuleGroupConfig', 'New-AzApplicationGatewayFirewallExclusionConfig', 'New-AzApplicationGatewayFrontendIPConfig', 'New-AzApplicationGatewayIPConfiguration', 'New-AzApplicationGatewayPathRuleConfig', 'New-AzApplicationGatewayProbeConfig', 'New-AzApplicationGatewayRedirectConfiguration', 'New-AzApplicationGatewayRewriteRuleHeaderConfiguration', 'New-AzApplicationGatewayUrlPathMapConfig', 'New-AzApplicationGatewayWebApplicationFirewallConfiguration', 'New-AzContainerNicConfig', 'New-AzContainerNicConfigIpConfig', 'New-AzExpressRouteCircuitPeeringConfig', 'New-AzLoadBalancerBackendAddressPoolConfig', 'New-AzLoadBalancerFrontendIpConfig', 'New-AzLoadBalancerInboundNatPoolConfig', 'New-AzLoadBalancerInboundNatRuleConfig', 'New-AzLoadBalancerOutboundRuleConfig', 'New-AzLoadBalancerProbeConfig', 'New-AzLoadBalancerRuleConfig', 'New-AzNetworkInterfaceIpConfig', 'New-AzNetworkSecurityRuleConfig', 'New-AzNetworkWatcherProtocolConfiguration', 'New-AzPacketCaptureFilterConfig', 'New-AzRouteConfig', 'New-AzRouteFilterRuleConfig', 'New-AzVirtualNetworkGatewayIpConfig', 'New-AzVirtualNetworkSubnetConfig', 'New-AzVpnClientConfiguration', 'Remove-AzApplicationGatewayAutoscaleConfiguration', 'Remove-AzApplicationGatewayFrontendIPConfig', 'Remove-AzApplicationGatewayIPConfiguration', 'Remove-AzApplicationGatewayProbeConfig', 'Remove-AzApplicationGatewayRedirectConfiguration', 'Remove-AzApplicationGatewayUrlPathMapConfig', 'Remove-AzExpressRouteCircuitConnectionConfig', 'Remove-AzExpressRouteCircuitPeeringConfig', 'Remove-AzLoadBalancerBackendAddressPoolConfig', 'Remove-AzLoadBalancerFrontendIpConfig', 'Remove-AzLoadBalancerInboundNatPoolConfig', 'Remove-AzLoadBalancerInboundNatRuleConfig', 'Remove-AzLoadBalancerOutboundRuleConfig', 'Remove-AzLoadBalancerProbeConfig', 'Remove-AzLoadBalancerRuleConfig', 'Remove-AzNetworkInterfaceIpConfig', 'Remove-AzNetworkSecurityRuleConfig', 'Remove-AzRouteConfig', 'Remove-AzRouteFilterRuleConfig', 'Remove-AzVirtualNetworkGatewayIpConfig', 'Remove-AzVirtualNetworkSubnetConfig', 'Set-AzApplicationGatewayAutoscaleConfiguration', 'Set-AzApplicationGatewayFrontendIPConfig', 'Set-AzApplicationGatewayIPConfiguration', 'Set-AzApplicationGatewayProbeConfig', 'Set-AzApplicationGatewayRedirectConfiguration', 'Set-AzApplicationGatewayUrlPathMapConfig', 'Set-AzApplicationGatewayWebApplicationFirewallConfiguration', 'Set-AzExpressRouteCircuitPeeringConfig', 'Set-AzLoadBalancerFrontendIpConfig', 'Set-AzLoadBalancerInboundNatPoolConfig', 'Set-AzLoadBalancerInboundNatRuleConfig', 'Set-AzLoadBalancerOutboundRuleConfig', 'Set-AzLoadBalancerProbeConfig', 'Set-AzLoadBalancerRuleConfig', 'Set-AzNetworkInterfaceIpConfig', 'Set-AzNetworkSecurityRuleConfig', 'Set-AzRouteConfig', 'Set-AzRouteFilterRuleConfig', 'Set-AzVirtualNetworkSubnetConfig', 'Test-AzPrivateIPAddressAvailability', 'Test-AzVirtualNetworkIPAddressAvailability', '*'
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'Network'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
      Profiles = 'latest-2019-04-30', 'hybrid-2019-03-01'
    }
  }
}
