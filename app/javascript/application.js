document.addEventListener("DOMContentLoaded", function () {
  const addMaterialButton = document.getElementById("add-material");
  const materialsDiv = document.getElementById("materials");
  let materialIndex = document.querySelectorAll(".material-fields").length;

  // Fungsi untuk menambahkan material baru
  function addNewMaterial() {
    // Ambil template HTML dari atribut data
    let newMaterialHtml = materialsDiv.dataset.newMaterialHtml.replace(/NEW_RECORD/g, materialIndex);

    // Cek apakah form baru sudah ada di DOM sebelum ditambahkan
    if (!materialsDiv.querySelector(`input[name='course[materials_attributes][${materialIndex}][title]']`)) {
      // Tambahkan form material baru ke div 'materials'
      materialsDiv.insertAdjacentHTML("beforeend", newMaterialHtml);

      // Inisialisasi CKEditor pada textarea yang baru ditambahkan
      document.querySelectorAll(`textarea[id*="course_materials_attributes_${materialIndex}_content"]`).forEach(function (el) {
        CKEDITOR.replace(el);
      });

      // Increment index untuk material berikutnya
      materialIndex++;
    }
  }

  // Event listener untuk tombol "Add Material"
  addMaterialButton.addEventListener("click", function (e) {
    e.preventDefault();
    addNewMaterial(); // Panggil fungsi untuk menambahkan material baru
  });

  // Event listener untuk tombol "Remove Material"
  document.addEventListener("click", function (e) {
    if (e.target && e.target.classList.contains("remove-material")) {
      const materialFields = e.target.closest(".material-fields");
      materialFields.style.display = "none"; // Sembunyikan material secara visual

      // Tandai material untuk dihapus
      materialFields.querySelector(".destroy-field").value = "1";
    }
  });
});
