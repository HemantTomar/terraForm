resource "aws_key_pair" "mytest-key" {
  key_name   = "my-test-terraform-key-new1"
  public_key = file(var.my_public_key)
}
