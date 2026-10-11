data "datadog_logs_pipelines_order" "logs_pipelines_order_lookup" {
  for_each = var.logs_pipelines_order_lookup

}

