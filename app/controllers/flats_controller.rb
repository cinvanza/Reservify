class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flats = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:address, :price, :capacity, :reserved)
  end
end
