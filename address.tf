resource "fortios_firewall_address" "lan" {
  name          = "lan"
  subnet        = "192.168.2.0 255.255.255.0"
  allow_routing = "disable"
  type          = "ipmask"
}

resource "fortios_firewall_address" "internet" {
  name          = "internet"
  subnet        = "0.0.0.0/0"
  allow_routing = "disable"
  type          = "ipmask"
}

resource "fortios_firewall_address" "trname" {
  allow_routing        = "disable"
  name                 = "testaddress"
  subnet               = "22.1.1.0 255.255.255.0"
  type                 = "ipmask"
  visibility           = "enable"
}

resource "fortios_firewall_address" "testaddress1" {
  allow_routing        = "disable"
  name                 = "testaddress1"
  subnet               = "9.9.9.9 255.255.255.0"
  type                 = "ipmask"
  visibility           = "enable"
}