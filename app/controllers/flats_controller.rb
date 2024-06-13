class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user # Here we assign the user_id parameter as the current user that is adding the flat
    if @flat.save
      redirect_to flats_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flats_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.bookings.destroy_all
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  def search

    @flats = Flat.all
    if params[:destination].present?
      @flats = @flats.where(address: params[:destination])
    end
    @check_in = params[:available_start]
    @check_out = params[:available_end]

    if @check_in.present? && @check_out.present?
      @available = available_dates(@check_in, @check_out)
    else
      @available = []
      flash[:alert] = "Please enter both check-in and check-out dates."
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:address, :price, :capacity, :user_id, :reserved, :title, :description, :image_url, :available_start, :available_end, photos: [])
  end
end

def available_dates(check_in, check_out)
  check_in_date = Date.parse(check_in)
  check_out_date = Date.parse(check_out)

  flats = Flat.where("check_in < ? AND check_out > ?", check_out_date, check_in_date)

  if flats.exists?
    return []
  else
    return [check_in_date, check_out_date]
  end
end
