# app/models/user.rb
class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :username, type: String
  field :password, type: String  # Jika Anda menyimpan password secara langsung (tidak disarankan untuk keamanan)

  # Metode untuk memverifikasi password
  def self.authenticate(username, password)
    user = User.find_by(username: username)
    return user if user && user.password == password
    nil
  end
end
