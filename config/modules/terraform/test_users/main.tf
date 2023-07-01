resource "keycloak_user" "tester" {
  realm_id = var.mafdet_realm
  username = "tester"
  enabled  = true

  email      = "tester@mafdet.cat"
  first_name = "Tess"
  last_name  = "Terr"

  initial_password {
    value     = "password"
    temporary = false
  }
}

resource "keycloak_user" "mafdetuser" {
  realm_id = var.mafdet_realm
  username = "mafdetuser"
  enabled  = true

  email      = "mafdetuser@mafdet.cat"
  first_name = "mafdet"
  last_name  = "User"

  initial_password {
    value     = "password123"
    temporary = false
  }
}