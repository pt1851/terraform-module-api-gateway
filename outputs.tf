output "invoke_url" {
  value = aws_api_gateway_stage.example.invoke_url
}

output "api_id" {
  value = aws_api_gateway_account.demo.id
}

output "stage_name1" {
  value = aws_api_gateway_stage.example.stage_name
}