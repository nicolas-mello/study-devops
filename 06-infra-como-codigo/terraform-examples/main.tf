# Definindo o provider (neste caso AWS)
provider "aws" {
  region = "us-east-1"
}

# Criando um bucket S3 simples
resource "aws_s3_bucket" "example" {
  bucket = "study-devops-bucket"  # Nome do bucket (único globalmente)
  acl    = "private"               # Permissões do bucket
}

# Comentários de estudo:
# - "provider" indica qual serviço/infra utilizaremos (AWS, GCP, Azure, OCI, etc)
# - "resource" define um recurso que será criado na nuvem
# - Terraform é declarativo: você define o estado desejado e ele aplica as mudanças
# - Idempotência: rodar 'terraform apply' múltiplas vezes não cria recursos duplicados
