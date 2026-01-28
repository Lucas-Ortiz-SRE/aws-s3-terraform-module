variable "tags" {
  description = "Inserir todas as tags que serão utilizadas no projeto"
  type = list()
}

variable "bucket_region" {
  description = "Inserir a região que será provisionado o bucket S3"
  type = string
}

variable "status_versioning" {
  description = "Inserir Enabled ou Disabled para o versionamento"
  type = string
}