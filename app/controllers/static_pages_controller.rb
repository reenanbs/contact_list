class StaticPagesController < ApplicationController

  def index
    @welcome = 'Bem-vindo!'
  end
end
