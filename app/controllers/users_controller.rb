class UsersController < ApplicationController

  before_action :secure_page_access, :except => [:new, :create]

  def index
    #@users = User.where(activated: true).paginate(page: params[:page])
    @users = User.where(activated: true)
  end

  def new
    @user = User.new(firstname: "Mario", lastname: "Rossi", email: "mrossi@mail.com", password: "test", password_confirmation: "test")
    #@user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      @user.send_activation_email
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      #flash[:error] = I18n.signup_error
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    redirect_to root_url and return unless true
  end

  private
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
    end

end
