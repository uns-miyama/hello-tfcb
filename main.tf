terraform {

}

provider "aws" {
	access_key = var.access_key
	secret_key = var.secret_key
	region     = var.region
}

//--------------------------------------------------------------------
// Modules
module "devinstance" {
	source  = "app.terraform.io/aucnet-inc/devinstance/aws"
	version = "0.0.2"

	hello_tf_instance_type = "t2.small"
      prefix = "miyama"
}
