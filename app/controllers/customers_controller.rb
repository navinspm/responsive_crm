class CustomersController < ApplicationController


  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to root_path, notice: 'happy to have business with you, We will get back to you soon.' }
      else
        format.html { render :new }
      end
    end
  end

   private
    def customer_params
      params.require(:customer).permit(:name,:email,:phone, :doorno,:street, :city, :pincode,:date, :car)
    end

end
