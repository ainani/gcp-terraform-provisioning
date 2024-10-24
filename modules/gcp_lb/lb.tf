resource "google_compute_global_address" "default" {
  name = "global-address"
}

resource "google_compute_http_health_check" "default" {
  name         = "http-health-check"
  request_path = "/"
}

resource "google_compute_backend_service" "default" {
  name          = "backend-service"
  port_name     = "http"
  protocol      = "HTTP"
  health_checks = [google_compute_http_health_check.default.self_link]
}

resource "google_compute_url_map" "default" {
  name            = "url-map"
  default_service = google_compute_backend_service.default.self_link
}

resource "google_compute_target_http_proxy" "default" {
  name    = "http-proxy"
  url_map = google_compute_url_map.default.self_link
}

resource "google_compute_forwarding_rule" "default" {
  name                  = "http-rule"
  target                = google_compute_target_http_proxy.default.self_link
  port_range            = "80"
  load_balancing_scheme = "EXTERNAL"
  ip_address            = google_compute_global_address.default.address
}
