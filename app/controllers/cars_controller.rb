class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
     @car = Car.find(params[:id])
    end
  end

  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

