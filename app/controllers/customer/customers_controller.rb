class Customer::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def edit
  end
  
  def updete
  end
  
end
