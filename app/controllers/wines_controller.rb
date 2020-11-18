class WinesController < ApplicationController
  
  before_action :set_wine, only: [:show, :edit, :update, :destroy]
  def new
    redirect_to wines_path unless current_user&.admin?
    @wine=Wine.new
    @strains=Strain.all
    @strains.each do |strain|
      @wine.assemblies.build(strain: strain)
    end
  end

  def show
  end

  def create

    @wine=Wine.new(wine_params)
    if @wine.save
      flash[:notice]="Vino creado exitosamente"
      redirect_to wines_path
    else
      flash[:danger]="Ups! ocurrió un error"
      render :new
    end

  end

  def index
    @wines=Wine.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

 private

  def set_wine
	  @wine=Wine.find(params[:id])
  end

  def wine_params		
    params.require(:wine).permit(:name, :price, assemblies_attributes: [:id, :strain_id, :wine_id, :percentage])
  end

end
