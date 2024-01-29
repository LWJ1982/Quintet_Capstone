
resource "aws_s3_bucket" "quintet" {
  bucket = "quintet-ntu-test"

  # tags = {
  #   Name        = "Quintet"
  #   Environment = "Dev"
  # }
}



# resource "aws_s3_object" "object" {
#   bucket = aws_s3_bucket.quintet.bucket
#   key    = "a7c8212d-0f2d-4158-a076-8ca0817a5eed.jpeg"
#   source = "/mnt/c/Users/sagar/Desktop/NTU Project/S3 Bucket/a7c8212d-0f2d-4158-a076-8ca0817a5eed.jpeg"

# }

resource "aws_s3_object" "test" {
  for_each = fileset("/mnt/c/Users/sagar/Desktop/NTU Project/S3 Bucket/", "**")
  bucket   = aws_s3_bucket.quintet.bucket
  key      = each.value
  source   = "/mnt/c/Users/sagar/Desktop/NTU Project/S3 Bucket/${each.value}"

}





# resource "aws_s3_object" "object" {
#   bucket = "Quintet"
#   key    = "new_object_key"
#   source = "C:/Users/sagar/Desktop/NTU Project/S3 Bucket"

#   # The filemd5() function is available in Terraform 0.11.12 and later
#   # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
#   # etag = "${md5(file("path/to/file"))}"
#   etag = filemd5("C:/Users/sagar/Desktop/NTU Project/S3 Bucket${each.value}")
# }







# resource "aws_s3_bucket_object" "object" {
#   for_each = fileset("C:/Users/sagar/Desktop/NTU Project/S3 Bucket", "**")
#   bucket = "Quintet"
#   key = each.value
#   source = "./documents/${each.value}"
#   etag = filemd5("C:/Users/sagar/Desktop/NTU Project/S3 Bucket/${each.value}")
# }





# resource "aws_s3_object" "object" {
#   bucket = "your_bucket_name"
#   key    = "new_object_key"
#   source = "C:\Users\sagar\Desktop\NTU Project\S3 Bucket"

#   # The filemd5() function is available in Terraform 0.11.12 and later
#   # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
#   # etag = "${md5(file("path/to/file"))}"
#   etag = filemd5("C:\Users\sagar\Desktop\NTU Project\S3 Bucket")
# }




# # resource "aws_s3_bucket" "example" {
#   bucket = "Quintet S3"
#   key    = "new_object_key"
#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
#   source = "C:/Users/sagar/Desktop/NTU Project/S3 Bucket"  #"C:\Users\sagar\Desktop\NTU Project\S3 Bucket"

#    ## Name        = "My bucket"
#    # Environment = "Dev"
#   }
# #}
#   # The filemd5() function is available in Terraform 0.11.12 and later
# For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
# etag = "${md5(file("path/to/file"))}"
# etag = filemd5("path/to/file") 
