variable "prefix" {
  description = "The prefix used for all resources in this example"
  default= "test"
}

variable "location" {
  description = "The Azure location where all resources in this example should be created"
  default = "westus"
}

variable "vnetnames"{

    default = ["vnet1","vnet2"]
}