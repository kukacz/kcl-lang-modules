"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import regex
import k8s.apimachinery.pkg.apis.meta.v1
_regex_match = regex.match


schema BastionHost:
    """
    Generator information: - Generated from: /network/resource-manager/Microsoft.Network/stable/2022-07-01/bastionHost.json - ARM URI: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/bastionHosts/{bastionHostName}

    Attributes
    ----------
    apiVersion : str, default is "network.azure.com/v1api20220701", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "BastionHost", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : NetworkAzureComV1api20220701BastionHostSpec, default is Undefined, optional
        spec
    status : NetworkAzureComV1api20220701BastionHostStatus, default is Undefined, optional
        status
    """


    apiVersion: "network.azure.com/v1api20220701" = "network.azure.com/v1api20220701"

    kind: "BastionHost" = "BastionHost"

    metadata?: v1.ObjectMeta

    spec?: NetworkAzureComV1api20220701BastionHostSpec

    status?: NetworkAzureComV1api20220701BastionHostStatus


schema NetworkAzureComV1api20220701BastionHostSpec:
    """
    network azure com v1api20220701 bastion host spec

    Attributes
    ----------
    azureName : str, default is Undefined, optional
        AzureName: The name of the resource in Azure. This is often the same as the name of the resource in Kubernetes but it doesn't have to be.
    disableCopyPaste : bool, default is Undefined, optional
        DisableCopyPaste: Enable/Disable Copy/Paste feature of the Bastion Host resource.
    dnsName : str, default is Undefined, optional
        DnsName: FQDN for the endpoint on which bastion host is accessible.
    enableFileCopy : bool, default is Undefined, optional
        EnableFileCopy: Enable/Disable File Copy feature of the Bastion Host resource.
    enableIpConnect : bool, default is Undefined, optional
        EnableIpConnect: Enable/Disable IP Connect feature of the Bastion Host resource.
    enableShareableLink : bool, default is Undefined, optional
        EnableShareableLink: Enable/Disable Shareable Link of the Bastion Host resource.
    enableTunneling : bool, default is Undefined, optional
        EnableTunneling: Enable/Disable Tunneling feature of the Bastion Host resource.
    ipConfigurations : [NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0], default is Undefined, optional
        IpConfigurations: IP configuration of the Bastion Host resource.
    location : str, default is Undefined, optional
        Location: Resource location.
    owner : NetworkAzureComV1api20220701BastionHostSpecOwner, default is Undefined, required
        owner
    scaleUnits : int, default is Undefined, optional
        ScaleUnits: The scale units for the Bastion Host resource.
    sku : NetworkAzureComV1api20220701BastionHostSpecSku, default is Undefined, optional
        sku
    tags : {str:str}, default is Undefined, optional
        Tags: Resource tags.
    """


    azureName?: str

    disableCopyPaste?: bool

    dnsName?: str

    enableFileCopy?: bool

    enableIpConnect?: bool

    enableShareableLink?: bool

    enableTunneling?: bool

    ipConfigurations?: [NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0]

    location?: str

    owner: NetworkAzureComV1api20220701BastionHostSpecOwner

    scaleUnits?: int

    sku?: NetworkAzureComV1api20220701BastionHostSpecSku

    tags?: {str:str}


    check:
        scaleUnits <= 50
        scaleUnits >= 2


schema NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0:
    """
    IP configuration of an Bastion Host.

    Attributes
    ----------
    name : str, default is Undefined, optional
        Name: Name of the resource that is unique within a resource group. This name can be used to access the resource.
    privateIPAllocationMethod : str, default is Undefined, optional
        PrivateIPAllocationMethod: Private IP allocation method.
    publicIPAddress : NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0PublicIPAddress, default is Undefined, required
        public IP address
    subnet : NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0Subnet, default is Undefined, required
        subnet
    """


    name?: str

    privateIPAllocationMethod?: "Dynamic" | "Static"

    publicIPAddress: NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0PublicIPAddress

    subnet: NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0Subnet


schema NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0PublicIPAddress:
    """
    PublicIPAddress: Reference of the PublicIP resource.

    Attributes
    ----------
    reference : NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0PublicIPAddressReference, default is Undefined, optional
        reference
    """


    reference?: NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0PublicIPAddressReference


schema NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0PublicIPAddressReference:
    """
    Reference: Resource ID.

    Attributes
    ----------
    armId : str, default is Undefined, optional
        ARMID is a string of the form /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}. The /resourcegroups/{resourceGroupName} bit is optional as some resources are scoped at the subscription level ARMID is mutually exclusive with Group, Kind, Namespace and Name.
    group : str, default is Undefined, optional
        Group is the Kubernetes group of the resource.
    kind : str, default is Undefined, optional
        Kind is the Kubernetes kind of the resource.
    name : str, default is Undefined, optional
        Name is the Kubernetes name of the resource.
    """


    armId?: str

    group?: str

    kind?: str

    name?: str


    check:
        _regex_match(str(armId), r"(?i)(^(/subscriptions/([^/]+)(/resourcegroups/([^/]+))?)?/providers/([^/]+)/([^/]+/[^/]+)(/([^/]+/[^/]+))*$|^/subscriptions/([^/]+)(/resourcegroups/([^/]+))?$)") if armId


schema NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0Subnet:
    """
    Subnet: Reference of the subnet resource.

    Attributes
    ----------
    reference : NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0SubnetReference, default is Undefined, optional
        reference
    """


    reference?: NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0SubnetReference


schema NetworkAzureComV1api20220701BastionHostSpecIPConfigurationsItems0SubnetReference:
    """
    Reference: Resource ID.

    Attributes
    ----------
    armId : str, default is Undefined, optional
        ARMID is a string of the form /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}. The /resourcegroups/{resourceGroupName} bit is optional as some resources are scoped at the subscription level ARMID is mutually exclusive with Group, Kind, Namespace and Name.
    group : str, default is Undefined, optional
        Group is the Kubernetes group of the resource.
    kind : str, default is Undefined, optional
        Kind is the Kubernetes kind of the resource.
    name : str, default is Undefined, optional
        Name is the Kubernetes name of the resource.
    """


    armId?: str

    group?: str

    kind?: str

    name?: str


    check:
        _regex_match(str(armId), r"(?i)(^(/subscriptions/([^/]+)(/resourcegroups/([^/]+))?)?/providers/([^/]+)/([^/]+/[^/]+)(/([^/]+/[^/]+))*$|^/subscriptions/([^/]+)(/resourcegroups/([^/]+))?$)") if armId


schema NetworkAzureComV1api20220701BastionHostSpecOwner:
    """
    Owner: The owner of the resource. The owner controls where the resource goes when it is deployed. The owner also controls the resources lifecycle. When the owner is deleted the resource will also be deleted. Owner is expected to be a reference to a resources.azure.com/ResourceGroup resource

    Attributes
    ----------
    armId : str, default is Undefined, optional
        arm Id
    name : str, default is Undefined, optional
        This is the name of the Kubernetes resource to reference.
    """


    armId?: str

    name?: str


    check:
        _regex_match(str(armId), r"(?i)(^(/subscriptions/([^/]+)(/resourcegroups/([^/]+))?)?/providers/([^/]+)/([^/]+/[^/]+)(/([^/]+/[^/]+))*$|^/subscriptions/([^/]+)(/resourcegroups/([^/]+))?$)") if armId


schema NetworkAzureComV1api20220701BastionHostSpecSku:
    """
    Sku: The sku of this Bastion Host.

    Attributes
    ----------
    name : str, default is Undefined, optional
        Name: The name of this Bastion Host.
    """


    name?: "Basic" | "Standard"


schema NetworkAzureComV1api20220701BastionHostStatus:
    """
    Bastion Host resource.

    Attributes
    ----------
    conditions : [NetworkAzureComV1api20220701BastionHostStatusConditionsItems0], default is Undefined, optional
        Conditions: The observed state of the resource
    disableCopyPaste : bool, default is Undefined, optional
        DisableCopyPaste: Enable/Disable Copy/Paste feature of the Bastion Host resource.
    dnsName : str, default is Undefined, optional
        DnsName: FQDN for the endpoint on which bastion host is accessible.
    enableFileCopy : bool, default is Undefined, optional
        EnableFileCopy: Enable/Disable File Copy feature of the Bastion Host resource.
    enableIpConnect : bool, default is Undefined, optional
        EnableIpConnect: Enable/Disable IP Connect feature of the Bastion Host resource.
    enableShareableLink : bool, default is Undefined, optional
        EnableShareableLink: Enable/Disable Shareable Link of the Bastion Host resource.
    enableTunneling : bool, default is Undefined, optional
        EnableTunneling: Enable/Disable Tunneling feature of the Bastion Host resource.
    etag : str, default is Undefined, optional
        Etag: A unique read-only string that changes whenever the resource is updated.
    id : str, default is Undefined, optional
        Id: Resource ID.
    ipConfigurations : [NetworkAzureComV1api20220701BastionHostStatusIPConfigurationsItems0], default is Undefined, optional
        IpConfigurations: IP configuration of the Bastion Host resource.
    location : str, default is Undefined, optional
        Location: Resource location.
    name : str, default is Undefined, optional
        Name: Resource name.
    provisioningState : str, default is Undefined, optional
        ProvisioningState: The provisioning state of the bastion host resource.
    scaleUnits : int, default is Undefined, optional
        ScaleUnits: The scale units for the Bastion Host resource.
    sku : NetworkAzureComV1api20220701BastionHostStatusSku, default is Undefined, optional
        sku
    tags : {str:str}, default is Undefined, optional
        Tags: Resource tags.
    $type : str, default is Undefined, optional
        Type: Resource type.
    """


    conditions?: [NetworkAzureComV1api20220701BastionHostStatusConditionsItems0]

    disableCopyPaste?: bool

    dnsName?: str

    enableFileCopy?: bool

    enableIpConnect?: bool

    enableShareableLink?: bool

    enableTunneling?: bool

    etag?: str

    id?: str

    ipConfigurations?: [NetworkAzureComV1api20220701BastionHostStatusIPConfigurationsItems0]

    location?: str

    name?: str

    provisioningState?: str

    scaleUnits?: int

    sku?: NetworkAzureComV1api20220701BastionHostStatusSku

    tags?: {str:str}

    $type?: str


schema NetworkAzureComV1api20220701BastionHostStatusConditionsItems0:
    """
    Condition defines an extension to status (an observation) of a resource

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        LastTransitionTime is the last time the condition transitioned from one status to another.
    message : str, default is Undefined, optional
        Message is a human readable message indicating details about the transition. This field may be empty.
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.condition[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
    reason : str, default is Undefined, required
        Reason for the condition's last transition. Reasons are upper CamelCase (PascalCase) with no spaces. A reason is always provided, this field will not be empty.
    severity : str, default is Undefined, optional
        Severity with which to treat failures of this type of condition. For conditions which have positive polarity (Status == True is their normal/healthy state), this will be omitted when Status == True For conditions which have negative polarity (Status == False is their normal/healthy state), this will be omitted when Status == False. This is omitted in all cases when Status == Unknown
    status : str, default is Undefined, required
        Status of the condition, one of True, False, or Unknown.
    $type : str, default is Undefined, required
        Type of condition.
    """


    lastTransitionTime: str

    message?: str

    observedGeneration?: int

    reason: str

    severity?: str

    status: str

    $type: str


schema NetworkAzureComV1api20220701BastionHostStatusIPConfigurationsItems0:
    """
    IP configuration of an Bastion Host.

    Attributes
    ----------
    id : str, default is Undefined, optional
        Id: Resource ID.
    """


    id?: str


schema NetworkAzureComV1api20220701BastionHostStatusSku:
    """
    Sku: The sku of this Bastion Host.

    Attributes
    ----------
    name : str, default is Undefined, optional
        Name: The name of this Bastion Host.
    """


    name?: str


