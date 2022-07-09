output "invoke_url" {
  value = aws_api_gateway_stage.example.invoke_url
}

output "api_id" {
  value = aws_api_gateway_rest_api.example.id
}

output "stage_name" {
  value = aws_api_gateway_stage.example.stage_name
}
