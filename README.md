# Mafdet Auth Keycloak

Purpose of this repository is to (1) build mutltiarchitecture Keycloak image (AMD,ARM) and (2) build Keycloak image with settings applied via terraform (realm, users, ..) to be used in Mafdet Project with help of GitHub workflows.

## Workflow
- Step 1: Build multiarch Keycloak image by running manually workflow `Build Keycloak AMD and ARM Docker Image` . This should be done just once. It is possible to chose required Keycloak version when running workflow manually. For all builds check [mafdet-keycloak](https://quay.io/repository/semicorp/mafdet-keycloak?tab=tags) Quay.io repository. 
- Then, based on image Keycloak image with all [Mafdet Project](https://github.com/orgs/SeMiCorp/repositories?q=mafdet&type=all&language=&sort=) Keycloak settings will be applied on `push` to `main` and `isssue-**` branches.