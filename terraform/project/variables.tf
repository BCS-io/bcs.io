variable "server_name_by_workspace" {
  type = "map"

  default = {
    development = "noss.bcs.io"
    production = "papa.bcs.io"
  }
}