module "dev_resources" {
  source = "../01_resource"
  envname = "pri"
  cidr-front = "10.10."
}