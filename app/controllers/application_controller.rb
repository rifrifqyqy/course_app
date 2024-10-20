class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  helper :rails_button
  helper_method :current_user, :logged_in?, :admin?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def require_login
    unless logged_in?
      flash[:alert] = "You must be logged in to access this section"
      redirect_to login_path # Ganti dengan path login yang sesuai
    end
  end

  def admin?
    current_user&.role == 'admin' # Mengembalikan true jika pengguna adalah admin
  end

  def require_admin
    unless admin?
      flash[:alert] = "You are not authorized to access this section."
      redirect_to root_path # Ganti dengan path yang sesuai
    end
  end
end
