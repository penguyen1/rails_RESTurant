class CustomersController < ApplicationController
  before_action :authenticate

  def index
    @customers = Customer.all
  end
  
  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.create(customer_params)

    if @customer.save
      redirect_to customer_path(@customer)            # "customer#show" profile view    redirect_to @customer ??
    else 
      render 'new'      # otherwise, go back to new form
    end
  end
  
  def update
    @customer = Customer.find(params[:id])

    if @customer.update(customer_params)
      redirect_to customer_path(@customer)            # "customer#show" profile view    redirect_to @customer ??
    else
      render 'edit'     # otherwise, go back to edit form
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path                  # "customers#index" list of all customers view
  end

  private   # strong params
  def customer_params
    params.require(:customer).permit(:name)     # include :total, :party_id ???
  end

end