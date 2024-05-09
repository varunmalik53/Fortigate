resource "fortios_firewall_policy" "internet_pri" {
  action           = "accept"
  name             = "internet_pri"
  policyid         = 2003
  global_label     = "WAN"
  schedule         = "always"
  logtraffic       = "all"
  logtraffic_start = "enable"
  nat = "enable"
  srcintf {
    name = "port1"
  }
  srcaddr {
    name = "lan"
  }
  dstintf {
    name = "internet_pri"
  }
  dstaddr {
    name = "internet"
  }
  service {
    name = "ALL"
  }
}

resource "fortios_firewall_policy" "internet_sec" {
  action           = "accept"
  name             = "internet_sec"
  policyid         = 2004
  global_label     = "WAN"
  schedule         = "always"
  logtraffic       = "all"
  logtraffic_start = "enable"
  nat = "enable"
  srcintf {
    name = "port1"
  }
  srcaddr {
    name = "lan"
  }
  dstintf {
    name = "internet_sec"
  }
  dstaddr {
    name = "all"
  }
  service {
    name = "ALL"
  }
}