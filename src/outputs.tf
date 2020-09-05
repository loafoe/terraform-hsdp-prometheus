output "prometheus_ip" {
  description = "Private IP address of Prometheus server"
  value       = hsdp_container_host.prometheus.private_ip
}

output "prometheus_id" {
  description = "Server ID of prometheus"
  value       = random_id.id.hex
}

output "prometheus_url" {
  description = "The cloud foundry URL of prometheus"
  value       = cloudfoundry_route.route.endpoint
}
