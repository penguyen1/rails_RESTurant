class UsersController < ApplicationController
  before_action :authenticate, except: [:new, :create]
  # new user sign up form
  def new 
    @user = User.new
  end

  def show
    if (@user = User.find(params[:id]))            # GET /users/:id
      @parties = @user.parties.all
# render plain: @parties.inspect
    else
      render file: 'public/404', status: 404, formats: [html]
    end
  end

  def create
    # binding.pry
    render plain: params[:user].inspect
    @user = User.new(user_params)
    if @user.save
      session[:current_user_id] = @user.id 
      # redirect_to user_path(@user)            # GET /users/:id
    else
      redirect_to new_user_path(@user)        # GET /users/new for @user obj
    end
  end

  def destroy
    @user = User.find(params[:id])
    session[:current_user_id] = nil           
    @user.destroy
    redirect_to root_path                     # GET / -> /users/new
  end

  private
  # strong_params
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end