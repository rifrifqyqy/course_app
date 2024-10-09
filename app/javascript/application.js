// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
document.addEventListener("DOMContentLoaded", function() {
    document.querySelectorAll('.ckeditor').forEach(function(el) {
      CKEDITOR.replace(el);
    });
  
    // Kode untuk menambah material baru seperti sebelumnya
    const addMaterialButton = document.getElementById('add-material');
    let materialIndex = document.querySelectorAll('.material-fields').length;
  
    addMaterialButton.addEventListener('click', function(e) {
      e.preventDefault();
  
      // Template untuk menambahkan material baru
      const newMaterial = `
        <div class="material-fields">
          <div>
            <label for="course_materials_attributes_${materialIndex}_title">Material Title</label>
            <input type="text" name="course[materials_attributes][${materialIndex}][title]" id="course_materials_attributes_${materialIndex}_title" />
          </div>
          <div>
            <label for="course_materials_attributes_${materialIndex}_description">Material Description</label>
            <textarea name="course[materials_attributes][${materialIndex}][description]" id="course_materials_attributes_${materialIndex}_description"></textarea>
          </div>
          <div>
            <label for="course_materials_attributes_${materialIndex}_content">Material Content</label>
            <textarea name="course[materials_attributes][${materialIndex}][content]" class="ckeditor"></textarea>
          </div>
          <input type="checkbox" name="course[materials_attributes][${materialIndex}][_destroy]" id="course_materials_attributes_${materialIndex}__destroy" />
          <label for="course_materials_attributes_${materialIndex}__destroy">Remove this material</label>
        </div>
      `;
  
      document.getElementById('materials').insertAdjacentHTML('beforeend', newMaterial);
      CKEDITOR.replace(`course_materials_attributes_${materialIndex}_content`);
      
      materialIndex++;
    });
  });
  