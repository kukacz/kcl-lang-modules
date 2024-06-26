"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema PeerAuthentication:
    """
    security istio io v1 peer authentication

    Attributes
    ----------
    apiVersion : str, default is "security.istio.io/v1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "PeerAuthentication", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : SecurityIstioIoV1PeerAuthenticationSpec, default is Undefined, optional
        spec
    status : any, default is Undefined, optional
        status
    """


    apiVersion: "security.istio.io/v1" = "security.istio.io/v1"

    kind: "PeerAuthentication" = "PeerAuthentication"

    metadata?: v1.ObjectMeta

    spec?: SecurityIstioIoV1PeerAuthenticationSpec

    status?: any


schema SecurityIstioIoV1PeerAuthenticationSpec:
    """
    Peer authentication configuration for workloads. See more details at: https://istio.io/docs/reference/config/security/peer_authentication.html

    Attributes
    ----------
    mtls : SecurityIstioIoV1PeerAuthenticationSpecMtls, default is Undefined, optional
        mtls
    portLevelMtls : {str:SecurityIstioIoV1PeerAuthenticationSpecPortLevelMtlsAnon}, default is Undefined, optional
        Port specific mutual TLS settings.
    selector : SecurityIstioIoV1PeerAuthenticationSpecSelector, default is Undefined, optional
        selector
    """


    mtls?: SecurityIstioIoV1PeerAuthenticationSpecMtls

    portLevelMtls?: {str:SecurityIstioIoV1PeerAuthenticationSpecPortLevelMtlsAnon}

    selector?: SecurityIstioIoV1PeerAuthenticationSpecSelector


schema SecurityIstioIoV1PeerAuthenticationSpecMtls:
    """
    Mutual TLS settings for workload.

    Attributes
    ----------
    mode : str, default is Undefined, optional
        Defines the mTLS mode used for peer authentication.

        Valid Options: DISABLE, PERMISSIVE, STRICT
    """


    mode?: "UNSET" | "DISABLE" | "PERMISSIVE" | "STRICT"


schema SecurityIstioIoV1PeerAuthenticationSpecPortLevelMtlsAnon:
    """
    security istio io v1 peer authentication spec port level mtls anon

    Attributes
    ----------
    mode : str, default is Undefined, optional
        Defines the mTLS mode used for peer authentication.

        Valid Options: DISABLE, PERMISSIVE, STRICT
    """


    mode?: "UNSET" | "DISABLE" | "PERMISSIVE" | "STRICT"


schema SecurityIstioIoV1PeerAuthenticationSpecSelector:
    """
    The selector determines the workloads to apply the PeerAuthentication on.

    Attributes
    ----------
    matchLabels : {str:str}, default is Undefined, optional
        One or more labels that indicate a specific set of pods/VMs on which a policy should be applied.
    """


    matchLabels?: {str:str}


