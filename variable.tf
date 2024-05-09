variable "failover" {
  description = "the internet connection to use, pri or sec"
  type        = string
  default     = "pri"
}

variable "fortios_token" {
  description = "token for fortios API access"
  type        = string
  default     = ""
}

variable "mgmt_ip" {
  description = "public IP address for fortigate"
  type        = string
  default     = "4.15.58.2:8443"
}

variable "mgmt_sec_ip" {
  description = "secondary public IP address for fortigate"
  type        = string
  default     = "74.199.134.214:8443"
}

variable "GLOBAL" {
  description = "GLOBAL Variables that are needed for everything"
  type        = map(any)

  default = {
    # TIMEZONE_VARS
    timezone        = "04"
    timezone_option = "specify"

    # VLAN_VARS
    type_vlan           = "vlan"
    mode_static         = "static"
    vdom                = "root"
    vlan_status_enable  = "enable"
    vlan_status_disable = "disable"

    # DHCP_SERVER_VARS
    dhcp_status_enable  = "enable"
    dhcp_status_disable = "disable"
    dhcp_lease          = "36000"
    dns_service         = "specify"
    server_type         = "regular"

    # DNs_SERVER_VARS
    nyc_dns        = "172.18.6.53"
    pdx_dns        = "172.19.6.53"
    cloudflare_dns = "1.1.1.1"
    quad9_dns      = "9.9.9.9"

    # SERVICE_VARS
    app_service_type    = "disable"
    category            = "General"
    check_reset_range   = "default"
    helper              = "auto"
    iprange             = "0.0.0.0"
    proxy               = "disable"
    tcp_halfclose_timer = 0
    tcp_halfopen_timer  = 0
    tcp_timewait_timer  = 0
    udp_idle_timer      = 0
    visibility          = "enable"

    # misc
    allow_ping       = "ping"
    allow_management = "ping https http"

  }
}

variable "loopback" {
  description = "BGP Loopback interface configuration"
  type        = map(any)

  default = {
    name = "bgp-loopback"
    cidr = "172.29.255.5/32"
  }
}

variable "BGP" {
  description = "BGP Global configuraion"
  type        = map(any)

  default = {
    ibgp_asn           = 64600
    ebgp_asn           = 64698
    cloud_ebgp_asn     = 64605
    cloud_gcp_ddag_asn = 64902

    pri_localpref        = "500"
    sec_localpref        = "200"
    soft_reconfiguration = "enable"
    next_hop_self        = "enable"
    local_as_no_prepend  = "enable"
    local_as_replace_as  = "enable"

    gcp_sysmgr_as = 64810

    aws_it_as     = 7224
    aws_ld_as     = 7224
    aws_ld_mum_as = 7224
  }
}

variable "VPNS" {
  description = "Site to Site VPN Connections"
  type        = map(any)

  default = {
    type             = "tunnel"
    autogenerated    = "auto"
    tunnel_type      = "static"
    peertype         = "any"
    net_device       = "disable"
    proposal         = "aes256-sha256"
    add_route        = "enable"
    ike_version      = "2"
    dhgrp            = "14"
    allowaccess_ping = "ping"

    nyc_pri_peer = "4.7.173.101"
    ewr_pri_peer = "192.235.89.60"

    blr_pri_peer = "49.207.248.29"
    blr_sec_peer = "117.215.140.2"
    bos_pri_peer = "64.156.16.225"
    bos_sec_peer = "76.74.111.107"
    ham_pri_peer = "207.38.194.157"
    ham_sec_peer = "50.170.56.30"
    hyd_pri_peer = "49.249.9.172"
    hyd_sec_peer = "14.194.145.68"
    hyt_pri_peer = "49.249.9.171"
    hyt_sec_peer = "223.30.105.179"
    mhg_pri_peer = "185.38.40.98"
    muc_pri_peer = "62.245.151.138"
    nma_pri_peer = "146.115.36.181"
    san_pri_peer = "64.158.242.155"
    tyo_pri_peer = "122.208.75.22"
    hyd_pri_peer = "49.249.9.172"

    gcp_sysmgr_pri_peer = "35.242.52.181"
    gcp_sysmgr_sec_peer = "35.220.53.167"

    aws_it_pri_peer = "3.215.171.5"
    aws_it_sec_peer = "35.171.179.30"

    aws_ld_pri_peer = "34.224.226.205"
    aws_ld_sec_peer = "35.169.145.130"

    aws_ld_mum_pri_peer = "3.108.46.209"
    aws_ld_mum_sec_peer = "35.154.149.114"

    gcp_ddag_pri_peer = "35.242.125.28"

    # note: the peer addresses must be /30's for now
    pri_nyc_pri_peer  = "172.29.254.5/30"
    pri_nyc_pri_local = "172.29.254.6/32"

    pri_ewr_pri_peer  = "172.29.254.130/30"
    pri_ewr_pri_local = "172.29.254.129/32"

    pri_bos_pri_local = "172.29.254.149/32"
    pri_bos_pri_peer  = "172.29.254.150/30"

    sec_bos_sec_local = "172.29.254.217/32"
    sec_bos_sec_peer  = "172.29.254.218/30"

    pri_ham_pri_local = "172.29.254.169/32"
    pri_ham_pri_peer  = "172.29.254.170/30"

    sec_ham_sec_local = "172.29.254.233/32"
    sec_ham_sec_peer  = "172.29.254.234/30"

    pri_hyt_pri_local = "172.29.254.153/32"
    pri_hyt_pri_peer  = "172.29.254.154/30"

    pri_mhg_pri_local = "172.29.254.137/32"
    pri_mhg_pri_peer  = "172.29.254.138/30"

    pri_muc_pri_local = "172.29.254.141/32"
    pri_muc_pri_peer  = "172.29.254.142/30"

    pri_nma_pri_local = "172.29.254.161/32"
    pri_nma_pri_peer  = "172.29.254.162/30"

    pri_san_pri_local = "172.29.254.165/32"
    pri_san_pri_peer  = "172.29.254.166/30"

    pri_tyo_pri_local = "172.29.254.145/32"
    pri_tyo_pri_peer  = "172.29.254.146/30"

    pri_gcp_sysmgr_local = "169.254.9.6/32"
    pri_gcp_sysmgr_peer  = "169.254.9.5/30"

    pri_aws_it_local = "169.254.37.234/32"
    pri_aws_it_peer  = "169.254.37.233/30"

    pri_aws_ld_local = "169.254.130.90/32"
    pri_aws_ld_peer  = "169.254.130.89/30"

    pri_aws_ld_mum_local = "169.254.162.130/32"
    pri_aws_ld_mum_peer  = "169.254.162.129/30"

    pri_blr_pri_peer  = "172.29.253.153/30"
    pri_blr_pri_local = "172.29.253.154/32"

    sec_blr_sec_peer  = "172.29.253.169/30"
    sec_blr_sec_local = "172.29.253.170/32"

    sec_hyt_sec_peer  = "172.29.253.138/30"
    sec_hyt_sec_local = "172.29.253.137/32"

    pri_hyd_pri_peer  = "172.29.254.174/30"
    pri_hyd_pri_local = "172.29.254.173/32"

    sec_hyd_sec_peer  = "172.29.254.238/30"
    sec_hyd_sec_local = "172.29.254.237/32"

    pri_gcp_ddag_local = "169.254.163.250/32"
    pri_gcp_ddag_peer  = "169.254.163.249/30"

  }
}


variable "VL667-pri" {
  description = "Lumen primary ISP"

  default = {
    name    = "internet-pri"
    vid     = 667
    gateway = "4.15.58.1"
    subnet  = "4.15.58.2/28" # the used IP/subnet
    cidr    = "4.15.58.0/28" # the correct subnet CIDR notation

    nat_trusted   = "4.15.58.3"
    nat_untrusted = "4.15.58.4"
    nat_appgate   = "4.15.58.5"
    nat_mail      = "4.15.58.6"
    nat_proxy     = "4.15.58.6"
    nat_ad        = "4.15.58.6"
    nat_nxgate    = "4.15.58.6"
    nat_gate      = "4.15.58.7"
    nat_wormhole  = "4.15.58.8"
    nat_appgate_sec = "4.15.58.14"

    peer_ip = "4.15.58.14"
  }
}

variable "VL668-sec" {
  description = "GTT secondary ISP"

  default = {
    name    = "internet-sec"
    vid     = 668
    gateway = "65.175.7.113"
    subnet  = "65.175.7.114/28" # the used IP/subnet
    cidr    = "65.175.7.112/28" # the correct subnet CIDR notation

    nat_trusted   = "65.175.7.114"
    nat_untrusted = "65.175.7.115"
    nat_appgate   = "65.175.7.116"
    nat_mail      = "65.175.7.117"
    nat_proxy     = "65.175.7.117"
    nat_ad        = "65.175.7.117"
    nat_nxgate    = "65.175.7.117"
    nat_gate      = "65.175.7.118"
    nat_gate      = "65.175.7.119"
    nat_appgate_sec ="65.175.7.118"

    peer_ip = "65.175.7.118"
  }
}

variable "VL30-nix" {
  description = "Unix VLAN 30 map"
  type        = map(any)

  default = {
    name = "VL30-nix"
    vid  = 30
    cidr = "172.19.4.0/23"
  }
}

variable "VL40-unix" {
  description = "Windows VLAN 40 map"
  type        = map(any)

  default = {
    name = "VL40-unix"
    vid  = 40
    cidr = "172.19.6.0/23"
  }
}

variable "VL50-wks" {
  description = "Workstations VLAN 50 map"
  type        = map(any)

  default = {
    name = "VL50-wks"
    vid  = 50
    cidr = "172.19.8.0/22"
  }
}

variable "VL52-ld" {
  description = "Livedesign VLAN 52 map"
  type        = map(any)

  default = {
    name = "VL52-ld"
    vid  = 52
    cidr = "172.19.253.0/24"
  }
}

variable "VL53-vmss" {
  description = "VMSS VLAN 53 map"
  type        = map(any)

  default = {
    name = "VL53-vmss"
    vid  = 53
    cidr = "172.19.248.0/22"
  }
}

variable "VL60-stor" {
  description = "Storage VLAN 60 map"
  type        = map(any)

  default = {
    name = "VL60-stor"
    vid  = 60
    cidr = "172.19.12.0/24"
  }
}

variable "VL70-print" {
  description = "Printer VLAN 70 map"
  type        = map(any)

  default = {
    name = "VL70-print"
    vid  = 70
    cidr = "172.19.13.0/24"
  }
}

variable "VL80-infra" {
  description = "Infrastructure VLAN 80 map"
  type        = map(any)

  default = {
    name = "VL80-infra"
    vid  = 80
    cidr = "172.19.14.0/24"
  }
}

variable "VL90-mgmt" {
  description = "MGMT VLAN 90 map"
  type        = map(any)

  default = {
    name       = "VL90-mgmt"
    vid        = 90
    cidr       = "172.19.16.0/22"
    dhcp_id    = 43
    dhcp_code  = 43
    dhcp_type  = "hex"
    dhcp_value = "061833352e3233372e322e3137392c31302e32302e33302e3634"
  }
}

variable "VL110-wifi" {
  description = "WIFI VLAN 110 map"
  type        = map(any)

  default = {
    name = "VL110-wifi"
    vid  = 110
    cidr = "192.168.16.0/23"
  }
}

variable "VL140-voip" {
  description = "VoIP VLAN 140 map"
  type        = map(any)

  default = {
    name = "VL140-VoIP"
    vid  = 140
    cidr = "192.168.140.0/24"
  }
}

variable "VL206-zoompc" {
  description = "Zoom PC VLAN 206 map"
  type        = map(any)

  default = {
    name = "VL206-zoompc"
    vid  = 206
    cidr = "192.168.206.0/24"
  }
}

variable "VL207-zoompad" {
  description = "Zoom iPad VLAN 207 map"
  type        = map(any)

  default = {
    name = "VL207-zoompad"
    vid  = 207
    cidr = "192.168.207.0/24"
  }
}

variable "community-map" {
  description = "BGP Community Map"
  type        = map(any)

  default = {
    nyc               = "64600:64602"
    nyc_oob           = "64600:64562"
    ewr               = "64600:64603"
    pdx               = "64600:64605"
    mhg               = "64600:64607"
    muc               = "64600:64608"
    tyo               = "64600:64609"
    blr               = "64600:64611"
    nma               = "64600:64612"
    sds               = "64600:64616"
    san               = "64600:64624"
    bos               = "64600:64632"
    hyt               = "64600:64640"
    hyd               = "64600:64648"
    gcp_sysmgr_shared = "64800:64810"
    aws_it            = "64580:64582"
  }
}
