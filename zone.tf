resource "fortios_system_zone" "internet_pri" {
  name      = "internet_pri"
  intrazone = "allow"

  interface {
    interface_name = "port2"
  }
}

resource "fortios_system_zone" "internet_sec" {
  name      = "internet_sec"
  intrazone = "allow"

interface {
    interface_name = "port3"
  }
}