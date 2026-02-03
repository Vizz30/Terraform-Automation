terraform {
  backend "s3" {
    bucket = "vizz-project-sample-tfstate"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
