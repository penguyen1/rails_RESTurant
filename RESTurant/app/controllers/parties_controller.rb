class PartiesController < ApplicationController
  before_action :authenticate

  # gets all User's parties?
  def index
    @parties = Party.all
  end

  # show a specific party & all customers in that party
  def show
    @party = Party.find(params[:id])
    @customers = Customer.all
  end

  # create a new Party
  def new
    @party = Party.new
  end

  # creates new Party if it doesnt already exist
  def create
    @party = Party.new(party_params)
    if @party.save
      redirect_to party_path(@party)
    else
      redirect_to new_party_path
    end
  end

  # edit party info
  def edit
    @party = Party.find(params[:id])
  end

  # updates party info
  def update
    @party = Party.find(params[:id])
    @party.update(party_params)
    redirect_to party(@party)
  end

  # deletes party
  def destroy
    @party = Party.find(params[:id])
    @party.destroy
    redirect_to party_path
  end

  def add_guest
    party = Party.find(params[:id])
    customer = Customer.find(params[:customer_id])

    party.add_guest(customer)
    redirect_to party_path(party)
  end

  def remove_guest
    party = Party.find(params[:id])
    customer = Customer.find(params[:customer_id])
    party.remove_guest(customer)
    redirect_to party_path(party)
  end

  private

  def party_params
    params.require(:party).permit(:tableNum, :guests, :paid, :total, :user_id)
  end
end