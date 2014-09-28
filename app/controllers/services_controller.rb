class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to root_path, notice: 'Our Engineers Will Contact You Soon' }
      else
        format.html { render :new }
      end
    end
  end
  private
    
    def service_params
      params.require(:service).permit(:name, :mobileno,:email, :car, :year, :problem)
    end

end
