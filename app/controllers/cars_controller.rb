require 'open-uri'

class CarsController < ApplicationController
  before_action :set_car, only: %i[edit update destroy]
  def index
    @cars = policy_scope(Car)
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.owner = current_user
    authorize @car
    if @car.save
      if @car.photos.attached?
        redirect_to cars_path
      else
        file = URI.open("https://www.clasificadoscontacto.com/_nuxt/img/auto-placeholder.84bcc3a.jpeg")
        @car.photos.attach(io: file, filename: "placeholder", content_type: "image/png")
        @car.save
        redirect_to cars_path
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @car = Car.find(params[:id])
    authorize @car
  end

  def edit

  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path, status: :see_other
    authorize @car
  end

  private

  def set_car
    @car = Car.find(params[:id])
    authorize @car
  end

  def car_params
    params.require(:car).permit(:brand, :year, :color, :model, :plate, :price, {photos: []})
  end
end
