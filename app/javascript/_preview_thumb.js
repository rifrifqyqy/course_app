document.addEventListener("DOMContentLoaded", function () {
  const thumbnailUpload = document.getElementById("thumbnail-upload");
  const thumbnailPreview = document.getElementById("thumbnail-preview");

  // Event listener untuk mengubah input file
  thumbnailUpload.addEventListener("change", function (e) {
    const file = e.target.files[0];

    if (file) {
      const reader = new FileReader();

      // Event listener saat file selesai dibaca
      reader.onload = function (event) {
        thumbnailPreview.src = event.target.result; // Update src untuk preview
        thumbnailPreview.style.display = "block"; // Tampilkan gambar
      };

      reader.readAsDataURL(file); // Baca file sebagai URL data
    } else {
      thumbnailPreview.src = ""; // Reset src jika tidak ada file
      thumbnailPreview.style.display = "none"; // Sembunyikan gambar
    }
  });
});
