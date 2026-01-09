variable "name" {
  description = "Name for the API Gateway"
  type        = string
}

variable "function_arn" {
  description = "ARN of the Lambda function"
  type        = string
}

variable "api_gateway_routes" {
  description = "API Gateway routes"
  type        = list(string)
}
