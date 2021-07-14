locals {
  common_tags = {
    client     = var.client
    stack      = "CCLLandingZone"
    enviroment = var.enviroment
  }
}