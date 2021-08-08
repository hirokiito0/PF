class Customer::CustomersController < ApplicationController
  before_action :ensure_correct_customer, only: [:update]
  
  def show
    @customer = Customer.find(params[:id])
    @games = @customer.games
  end

  def edit
    @customer = Customer.find(params[:id])
  end
  
  def updete
    if @customer.update(customer_params)
      redirect_to customers_path(@customer), notice: "You have updated user successfully."
    else
      render "show"
    end
  end
  
  private
  def customer_params
    params.require(:customer).permit(:name, :introduction, :profile_image)
  end

  def ensure_correct_customer
    @customer = Customer.find(params[:id])
    unless @customer == current_customer
      redirect_to customer_customers_path(current_customer)
    end
  end
  
end
