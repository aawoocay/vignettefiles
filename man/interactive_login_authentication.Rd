% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspace.R
\name{interactive_login_authentication}
\alias{interactive_login_authentication}
\title{Manages authentication and acquires an authorization token in interactive login workflows.}
\usage{
interactive_login_authentication(
  force = FALSE,
  tenant_id = NULL,
  cloud = "AzureCloud"
)
}
\arguments{
\item{force}{Indicates whether "az login" will be run even if the old "az login" is still valid.}

\item{tenant_id}{The string id of the active directory tenant that the service
identity belongs to. This is can be used to specify a specific tenant when
you have access to multiple tenants. If unspecified, the default tenant will be used.}

\item{cloud}{The name of the target cloud. Can be one of "AzureCloud", "AzureChinaCloud", or
"AzureUSGovernment". If no cloud is specified, "AzureCloud" is used.}
}
\value{
\code{InteractiveLoginAuthentication} object
}
\description{
Interactive login authentication is suitable for local experimentation on your own computer, and is the
default authentication model when using Azure Machine Learning SDK.
The constructor of the class will prompt you to login. The constructor then will save the credentials
for any subsequent attempts. If you are already logged in with the Azure CLI or have logged-in before, the
constructor will load the existing credentials without prompt.
}
\section{Examples}{
\preformatted{interactive_auth <- interactive_login_authentication(tenant_id="your-tenant-id")

ws <- get_workspace("<your workspace name>",
                    "<your subscription ID>",
                    "<your resource group>",
                    auth = interactive_auth)
}
}

\seealso{
\code{\link[=get_workspace]{get_workspace()}} \code{\link[=service_principal_authentication]{service_principal_authentication()}}
}
