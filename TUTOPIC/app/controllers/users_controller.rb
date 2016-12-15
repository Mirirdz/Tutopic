class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
 
  # devise :database_authentificable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  # attr_accesible :email, :name, :password_confirmation, :remember_me
  # # GET /subjects
  # # GET /subjects.json
  def index
    @users = User.all
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
  end

  

  # GET /subjects/1/edit
  def edit
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @user = User.new(user_params)
    @user.role ||= 1
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      
      if params[:id] == "sign_out"
        sign_out current_user

        redirect_to root_path
         else @@user = User.find(params[:id])
      end
      

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :role)
    end

end


