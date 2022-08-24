class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
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
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :year, :color, :model, :plate, :price, :photo)
  end
end

#RemoveUrlFromCars
