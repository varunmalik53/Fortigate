
resource "fortios_system_interface" "lan" {
  name              = "port1"
  type              = "physical"
  vdom              = "root"
  mode              = "static"
  lldp_reception    = "enable"
  lldp_transmission = "enable"
}

resource "fortios_system_interface" "internet_pri" {
  name              = "port2"
  type              = "physical"
  vdom              = "root"
  mode              = "static"
  lldp_reception    = "enable"
  lldp_transmission = "enable"
  ip = "100.1.1.50 255.255.255.0"
}

resource "fortios_system_interface" "internet_sec" {
  name              = "port3"
  type              = "physical"
  vdom              = "root"
  mode              = "static"
  lldp_reception    = "enable"
  lldp_transmission = "enable"
  ip= "200.1.1.50 255.255.255.0"
}