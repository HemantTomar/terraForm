output "instance_id" {
  value = "${element(aws_instance.my-test-instance.*.id, 1)}"
}
