class EnologistsController < ApplicationController
  
  before_action :set_enologist, only: [:show, :edit, :update, :destroy]

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

  def set_enologist
	  @wine=Wine.find(params[:id])
  end

  def enologist_params		
    params.require(:wine).permit(:name, :price)
  end

end
