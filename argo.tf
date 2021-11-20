resource "random_id" "argo_secret" {
  byte_length = 35
}

resource "cloudflare_argo_tunnel" "auto_tunnel" {
  account_id = var.cloudflare_account_id
  name       = "zero_trust_ssh_http"
  secret     = random_id.argo_secret.b64_std
}

resource "cloudflare_argo_tunnel" "auto_tunnel2" {
  account_id = var.cloudflare_account_id
  name       = "zero_trust_ssh_http2"
  secret     = random_id.argo_secret.b64_std
}
