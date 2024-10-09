class Material
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :description, type: String
  field :content, type: String
  
  
  # Tambahkan field untuk gambar
  field :image, type: String
  mount_uploader :image, ImageUploader
  belongs_to :course
end
