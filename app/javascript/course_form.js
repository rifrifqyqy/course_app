document.addEventListener("turbo:load", function () {
  initializeFormHandlers();
});

function initializeFormHandlers() {
  const materialsContainer = document.getElementById("materials");
  const addMaterialButton = document.getElementById("add-material");
  let materialIndex = document.querySelectorAll(".material-fields").length;

  if (addMaterialButton && !addMaterialButton.dataset.handlerAttached) {
    addMaterialButton.addEventListener("click", function (e) {
      e.preventDefault();
      const timestamp = new Date().getTime();
      const newMaterialHtml = materialsContainer.dataset.newMaterialHtml.replace(/NEW_RECORD/g, `new_${timestamp}`).replace(/new_materials_attributes_index/g, `materials_attributes_${materialIndex}`);

      materialsContainer.insertAdjacentHTML("beforeend", newMaterialHtml);
      materialIndex++;

      // Initialize CKEditor for the new textarea
      const newTextarea = materialsContainer.lastElementChild.querySelector(".ckeditor");
      if (newTextarea) {
        CKEDITOR.replace(newTextarea);
      }
    });
    addMaterialButton.dataset.handlerAttached = "true";
  }

  if (materialsContainer && !materialsContainer.dataset.handlerAttached) {
    materialsContainer.addEventListener("click", function (e) {
      if (e.target && e.target.classList.contains("remove-material")) {
        const materialFields = e.target.closest(".material-fields");
        const destroyField = materialFields.querySelector(".destroy-field");

        if (destroyField.value === "false") {
          destroyField.value = "true";
          materialFields.style.display = "none";
        } else {
          materialFields.remove();
        }
      }
    });
    materialsContainer.dataset.handlerAttached = "true";
  }
}
