class MagazinesController < ApplicationController
  
  before_action :set_magazine, only: [:show, :edit, :update, :destroy]

  def new
  end

  def show
  end

  def create
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_magazine
	  @wine=Wine.find(params[:id])
  end

  def magazine_params		
    params.require(:wine).permit(:name, :price)
  end

end
