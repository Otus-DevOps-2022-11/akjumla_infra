provider "yandex" {
  #service_account_key_file = "/mnt/c/Projects/Otus/IAMKey/key.json"
  token = "y0_AgAAAABnWlWSAATuwQAAAADX3cr1Jqw5VrwrQ2e8Ef9Gb3-6LDq8Ssc"
  cloud_id  = "b1gjrofgh98v3fs9dq6t"
  folder_id = "b1gbedn5aveombafu1vn"
  zone      = "ru-central1-a"
}
resource "yandex_compute_instance" "app" {
  name = "reddit-app"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      # Указать id образа созданного в предыдущем домашем задании
      image_id = "fd8dacq49gcjms1cqfmu"
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = "e9bcj1ehang9rad2u8o2"
    nat       = true
  }

  metadata = {
  ssh-keys = "ubuntu:${file("~/.ssh/ubuntu.pub")}"
  }
}
