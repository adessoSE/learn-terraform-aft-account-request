module "confcoco-management-account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "itmc-confidential-compute-aws@adesso.de"
    AccountName               = "confcoco-management-account"
    ManagedOrganizationalUnit = "confcoco"
    SSOUserEmail              = "itmc-confidential-compute-aws@adesso.de"
    SSOUserFirstName          = "confcoco"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "Name" = "confcoco-management-account"
  }

  change_management_parameters = {
    change_requested_by = "Bekir Kocabas"
    change_reason       = "We need a management account for confcoco"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "confcoco"

}

module "confcoco-repo-account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "itmc-conf-comp-repo@adesso.de"
    AccountName               = "confcoco-repo-account"
    ManagedOrganizationalUnit = "confcoco"
    SSOUserEmail              = "itmc-conf-comp-repo@adesso.de"
    SSOUserFirstName          = "confcoco-repo"
    SSOUserLastName           = "User"
  }

  account_tags = {
    "Name" = "confcoco-repo-account"
  }

  change_management_parameters = {
    change_requested_by = "Bekir Kocabas"
    change_reason       = "We need a repo account for confcoco"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "confcoco"

}