terraform {
  backend "s3" {
    bucket = "dubstep-project1-sample"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "vishal-dynamodb-table"
  }
}
