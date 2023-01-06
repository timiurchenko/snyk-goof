provider "aws" {
 region = "us-west-2"
}

resource "aws_s3_bucket" "snyk-new-bucket-1-rwgsnyk" {
 bucket        = "snyk-new-bucket-1-rwgsnyk"
}

resource "aws_s3_bucket_acl" "acl" {
 bucket        = aws_s3_bucket.snyk-new-bucket-1-rwgsnyk.id
 acl           = "private"
}

resource "aws_s3_bucket_public_access_block" "block" {
 bucket                  = "${aws_s3_bucket.snyk-new-bucket-1-rwgsnyk.id}"
 block_public_acls       = false
 block_public_policy     = false
 ignore_public_acls      = false
 restrict_public_buckets = false
 }
