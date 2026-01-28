#===========================================================================================#
#                                      Global Variables                                     #
#===========================================================================================#
variable "region" {
  description = "Inserir o valor da região que irá ser utilizada na AWS"
  type = string
}

variable "managed" {
  description = "Inserir o que gerencia o recurso (exemplo: terraform)"
  type = string
}

variable "owner" {
  description = "Inserir quem é o dono do recurso"
  type = string
}