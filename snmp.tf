resource "fortios_systemsnmp_user" "net-mon" {
  auth_proto     = "sha256"
  events         = "cpu-high mem-low log-full intf-ip vpn-tun-up vpn-tun-down ha-switch ha-hb-failure ips-signature ips-anomaly av-virus av-oversize av-pattern av-fragmented fm-if-change bgp-established bgp-backward-transition ha-member-up ha-member-down ent-conf-change av-conserve av-bypass av-oversize-passed av-oversize-blocked ips-pkg-update ips-fail-open faz-disconnect wc-ap-up wc-ap-down fswctl-session-up fswctl-session-down load-balance-real-server-down per-cpu-high"
  ha_direct      = "disable"
  name           = "net-mon"
  priv_proto     = "aes256"
  queries        = "enable"
  query_port     = 161
  security_level = "auth-priv"
  source_ip      = "0.0.0.0"
  source_ipv6    = "::"
  notify_hosts = "${var.libre} ${var.device42}"
  status         = "enable"
  trap_lport     = 162
  trap_rport     = 162
  trap_status    = "enable"
  auth_pwd       = var.auth_pwd
  priv_pwd       = var.priv_pwd
}

resource "fortios_systemsnmp_user" "infosec-mon" {
  auth_proto     = "sha256"
  events         = "cpu-high mem-low log-full intf-ip vpn-tun-up vpn-tun-down ha-switch ha-hb-failure ips-signature ips-anomaly av-virus av-oversize av-pattern av-fragmented fm-if-change bgp-established bgp-backward-transition ha-member-up ha-member-down ent-conf-change av-conserve av-bypass av-oversize-passed av-oversize-blocked ips-pkg-update ips-fail-open faz-disconnect wc-ap-up wc-ap-down fswctl-session-up fswctl-session-down load-balance-real-server-down per-cpu-high"
  ha_direct      = "disable"
  name           = "infosec-mon"
  priv_proto     = "aes256"
  queries        = "enable"
  query_port     = 161
  security_level = "auth-priv"
  source_ip      = "0.0.0.0"
  source_ipv6    = "::"
  notify_hosts = "${var.libre} ${var.device42}"
  status         = "enable"
  trap_lport     = 162
  trap_rport     = 162
  trap_status    = "enable"
  auth_pwd       = var.auth_pwd
  priv_pwd       = var.priv_pwd
}

resource "fortios_systemsnmp_sysinfo" "sysinfo" {
  status                    = "enable"
  description               = "HYD Firewalls"
  location                  = "HYD"
  contact_info              = "it@schrodinger.com"
}

print(thisis unnecessary push)

