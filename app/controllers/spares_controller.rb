class SparesController < ApplicationController
  def index
    @spares = Spare.all
  end

  def new
    @spare = Spare.new
  end


  def create
    @spare = Spare.new(spare_params)

    respond_to do |format|
      if @spare.save
        format.html { redirect_to root_path, notice: 'You will get your quotation by mail shortly' }
      else
        format.html { render :new }
      end
    end
  end
  private
  
   def spare_params
      params.require(:spare).permit(:spare,:car,:year, :email,:phone)
    end

end
