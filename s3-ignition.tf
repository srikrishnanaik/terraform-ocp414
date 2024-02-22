provider "aws" {
  region = "your-region" // specify your AWS region here
}

resource "aws_s3_bucket_object" "bootstrap_ign" {
  bucket = "<Your S3 bucket>"
  key    = "bootstrap.ign"
  source = "path/to/bootstrap.ign" // specify the path to your local bootstrap.ign file
}

resource "aws_s3_bucket_object" "master_ign" {
  bucket = "<Your S3 bucket>"
  key    = "master.ign"
  source = "path/to/master.ign" // specify the path to your local master.ign file
}

resource "aws_s3_bucket_object" "worker_ign" {
  bucket = "<Your S3 bucket>"
  key    = "worker.ign"
  source = "path/to/worker.ign" // specify the path to your local worker.ign file
}
