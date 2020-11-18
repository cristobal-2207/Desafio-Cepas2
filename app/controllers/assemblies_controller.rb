class AssembliesController < ApplicationController
  
  before_action :set_assambly, only: [:show, :edit, :update, :destroy]

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

  def set_assembly
	  @wine=Wine.find(params[:id])
  end

  def assembly_params		
    params.require(:wine).permit(:name, :price)
  end

end
