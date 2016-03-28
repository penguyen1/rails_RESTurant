class OrdersController < ApplicationController
  before_action :authenticate

  def index
    @orders = Order.all
  end
  
  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end
  
  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.create(order_params)

    if @order.save
      redirect_to order_path(@order)            # "order#show" profile view    redirect_to @order ??
    else 
      render 'new'      # otherwise, go back to new form
    end
  end
  
  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to order_path(@order)            # "order#show" profile view    redirect_to @order ??
    else
      render 'edit'     # otherwise, go back to edit form
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path                  # "orders#index" list of all orders view
  end

  private   # strong params
  def order_params
    params.require(:order).permit(:customer_id, :food_id, :quantity)     # include :total ???
  end

end