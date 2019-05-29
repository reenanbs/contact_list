class UsersController < ApplicationController

  # renderizará a página para criação do user
  def new
    @user = User.new
  end

  # receberá um post para a criação do user
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Usuário cadastrado com sucesso'
      redirect_to root_url
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end
end
