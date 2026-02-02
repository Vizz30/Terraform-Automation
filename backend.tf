terraform {
  backend "s3" {
    bucket = "vizz-proj-sample-terraformtfstate"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
