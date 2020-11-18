class StrainsController < ApplicationController
  
  before_action :set_strain, only: [:show, :edit, :update, :destroy]

  def new
    redirect_to wines_path unless current_user&.admin?
    @strain=Strain.new
  end

  def show
  end

  def create
  
    @strain=Strain.new(strain_params)
    if @strain.save
      flash[:notice]="Cepa creada exitosamente"
      redirect_to new_strain_path
    else
      flash[:danger]="Ups! ocurrió un error"
      render :new
    end


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

  def set_strain
	  @strain=strain.find(params[:id])
  end

  def strain_params		
    params.require(:strain).permit(:name, :price)
  end

end
