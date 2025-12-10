resource "google_storage_bucket" "loki-chunks" {
  name          = "loki-chunks-${var.project}"
  location      = var.region
  force_destroy = true
}
resource "google_storage_bucket" "loki-ruler" {
  name          = "loki-ruler-${var.project}"
  location      = var.region
  force_destroy = true

}