# app/models/user.rb
class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :username, type: String
  field :password, type: String
  field :role, type: String, default: 'user'   # Jika Anda menyimpan password secara langsung (tidak disarankan untuk keamanan)

  # Validasi unik untuk username
  validates :username, presence: true, uniqueness: true

  # Metode untuk memverifikasi password
  def self.authenticate(username, password)
    user = User.find_by(username: username)
    return user if user && user.password == password
    nil
  end
end
