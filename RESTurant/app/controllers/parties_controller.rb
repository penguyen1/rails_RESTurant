class PartiesController < ApplicationController
  before_action :authenticate

  def index
    @parties = Party.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def add_guest
  end

  def remove_guest
  end

  private

  def party_params
    params.require(:party).permit(:tableNum, :guests, :paid, :total, :user_id)
  end
end