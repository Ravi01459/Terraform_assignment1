variable "rgname" {
  default     = "TS-DEV-APP-DISKRG1"
  type        = string
  description = "this is RG name"
}
variable "loc" {
  default     = "East US"
  type        = string
  description = "this is RG Location"
}

variable "diskname" {
  type    = list(any)
  default = ["TS-Dev-App-disk", "TS-Dev-App-datadisk", "TS-Dev-App-logdisk", "TS-Dev-App-osdisk"]

}
