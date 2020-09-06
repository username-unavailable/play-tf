variable "credentials_file" {
  description = "The path to the desired credentials file"
}

variable "project_id" {
  description = "The ID (NOT name or number) of the GCP project to provision the infrastructure in"
}

variable "region" {
  description = "The desired region to provision the infrastructure in"
}

variable "zone" {
  description = "The desired zone to provision the infrastructure in"
}
