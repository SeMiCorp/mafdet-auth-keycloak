resource "keycloak_openid_client" "react_client" {
  lifecycle {
    prevent_destroy = true
  }

  realm_id = keycloak_realm.mafdet.id

  client_id = "mafdetreactclient"
  name      = "React client mafdet"
  enabled   = true

  access_type                              = "PUBLIC"
  exclude_session_state_from_auth_response = false
  standard_flow_enabled                    = true
  direct_access_grants_enabled             = true
  service_accounts_enabled                 = false

  valid_redirect_uris = [
    var.mafdet_url != "" ? "${var.mafdet_url}/*" : "*",
  ]
  web_origins = [
    var.mafdet_url != "" ? var.mafdet_url : "*",
  ]
}

resource "keycloak_openid_user_property_protocol_mapper" "user_property_mapper" {
  realm_id  = keycloak_realm.mafdet.id
  client_id = keycloak_openid_client.react_client.id
  name      = "personId"

  user_property = "id"
  claim_name    = "personId"
}
