class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: [:edit, :update]

  # GET /admin/users
  def index
    @users = User.all.order(id: :desc)
  end

  # GET /admin/users/new
  def new
    @user = User.new
  end

  # GET /admin/users/1
  def edit; end

  # PUT/PATCH /admin/users/1
  def update
    update_user_params = user_params
    if update_user_params[:password].blank? && update_user_params[:password_confirmation].blank?
      update_user_params.delete(:password)
      update_user_params.delete(:password_confirmation)
    end

    if @user.update(update_user_params)
      redirect_to admin_users_url, notice: 'User Updated'
    else
      render :edit
    end
  end

  # POST /admin/users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_users_url, notice: 'User Created'
    else
      render :new
    end
  end


  protected

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :admin)
  end
end
