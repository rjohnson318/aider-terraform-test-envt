output "runbook_execution_status" {
  description = "The execution status of the runbooks."
  value       = module.runbooks.execution_status
}

output "runbook_execution_output" {
  description = "The output of the executed runbooks."
  value       = module.runbooks.execution_output
}