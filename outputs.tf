output "aws_key_pair_name" {
  value = element(concat(aws_key_pair.generated_key.*.key_name, [""]), 0)
}