class ApplicationController < ActionController::Base

  include SessionsHelper

  private
  # método que obrigará o login do usuário para acesso ao site
    def require_logged_in_user
      unless user_signed_in?
        flash[:danger] = 'Área restrita. Por favor, faça o login.'
        redirect_to entrar_path
      end
    end
end
