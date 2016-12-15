class CarrerUsersController < ApplicationController
  before_action :set_carrer_user, only: [:show, :edit, :update, :destroy]

  # GET /carrer_users
  # GET /carrer_users.json
  def index
    if current_user.admin?
    @carrer_users = CarrerUser.all
  else 
     @carrer_users = CarrerUser.all.where(user_id:current_user.id)
   end
  end

  # GET /carrer_users/1
  # GET /carrer_users/1.json
  def show
  end

  # GET /carrer_users/new
  def new
    @carrer_user = CarrerUser.new
  end

  # GET /carrer_users/1/edit
  def edit
  end

  # POST /carrer_users
  # POST /carrer_users.json
  def create
    @carrer_user = CarrerUser.new(carrer_user_params)
     if current_user.student?
        @carrer_user.user_id = current_user.id
        @carrer_user.save
        end
        #render json: @carrer_user.to_json
    respond_to do |format|
      if @carrer_user.save

        format.html { redirect_to @carrer_user, notice: 'Carrer user was successfully created.' }
        format.json { render :show, status: :created, location: @carrer_user }
      else
        format.html { render :new }
        format.json { render json: @carrer_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrer_users/1
  # PATCH/PUT /carrer_users/1.json
  def update
    respond_to do |format|
      if @carrer_user.update(carrer_user_params)
        format.html { redirect_to @carrer_user, notice: 'Carrer user was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrer_user }
      else
        format.html { render :edit }
        format.json { render json: @carrer_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrer_users/1
  # DELETE /carrer_users/1.json
  def destroy
    @carrer_user.destroy
    respond_to do |format|
      format.html { redirect_to carrer_users_url, notice: 'Carrer user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrer_user
      @carrer_user = CarrerUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrer_user_params
      params.require(:carrer_user).permit(:points, :user_id, :carrer_id)
    end
end
