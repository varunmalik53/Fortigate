terraform{
    required_providers {
        fortios = {
            source = "fortinetdev/fortios"
        }
    }
}


provider "fortios" {
    hostname = "192.168.1.50"
    token = "7zdjc1Hyhmzgn81GmgsGGs7dycd54j"
    insecure = true
}