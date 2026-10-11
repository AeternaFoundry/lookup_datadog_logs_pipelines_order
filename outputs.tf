output "logs_pipelines_order_lookup_id" {
  description = "Map of id values across all logs_pipelines_order_lookup, keyed the same as var.logs_pipelines_order_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_logs_pipelines_order.logs_pipelines_order_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logs_pipelines_order_lookup_pipeline_ids" {
  description = "Map of pipeline_ids values across all logs_pipelines_order_lookup, keyed the same as var.logs_pipelines_order_lookup except keys with no pipeline_ids are omitted"
  value       = { for k, v in data.datadog_logs_pipelines_order.logs_pipelines_order_lookup : k => v.pipeline_ids if v.pipeline_ids != null && length(v.pipeline_ids) > 0 }
}

