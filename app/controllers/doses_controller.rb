class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def edit
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def update
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
    @dose.update(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :edit
    end
  end

  def destroy
    @cocktail = Cocktail.find(@dose)
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
