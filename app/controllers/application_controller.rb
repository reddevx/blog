class ApplicationController < ActionController::Base
protect_from_forgery with: :exception

include SessionsHelper

private
  def require_logged_in_user
    unless user_signed_in?
    flash[:danger] = 'Local restrito, Por Favor, realize o Login'
    redirect_to entrar_path
  end
end
end
