class UsersController < ApplicationController

  # renderizará a página para criação do user
  def new
    @user = User.new
  end

  # receberá um post para a criação do user
  def create
  end
end
