class SubjectCarrerUsersController < ApplicationController
  before_action :set_subject_carrer_user, only: [:show, :edit, :update, :destroy]

  # GET /subject_carrer_users
  # GET /subject_carrer_users.json
  def index
    @subject_carrer_users = SubjectCarrerUser.all
  end

  # GET /subject_carrer_users/1
  # GET /subject_carrer_users/1.json
  def show
  end

  # GET /subject_carrer_users/new
  def new
    @subject_carrer_user = SubjectCarrerUser.new
  end

  # GET /subject_carrer_users/1/edit
  def edit
  end

  # POST /subject_carrer_users
  # POST /subject_carrer_users.json
  def create
    @subject_carrer_user = SubjectCarrerUser.new(subject_carrer_user_params)


    respond_to do |format|
     if  @subject_carrer_user.save
       # @subject_carrer_user.subject_user_name
        @subject_carrer_user.sum_points
        format.html { redirect_to @subject_carrer_user, notice: 'Subject carrer user was successfully created.' }
        format.json { render :show, status: :created, location: @subject_carrer_user }
      else
        format.html { render :new }
        format.json { render json: @subject_carrer_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_carrer_users/1
  # PATCH/PUT /subject_carrer_users/1.json
  def update
    respond_to do |format|
      if @subject_carrer_user.update(subject_carrer_user_params)
        @subject_carrer_user.sum_points
      #  @subject_carrer_user.subject_user_name
        format.html { redirect_to @subject_carrer_user, notice: 'Subject carrer user was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_carrer_user }
      else
        format.html { render :edit }
        format.json { render json: @subject_carrer_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_carrer_users/1
  # DELETE /subject_carrer_users/1.json
  def destroy
    @subject_carrer_user.destroy
    @subject_carrer_user.sum_points
    #@subject_carrer_user.subject_user_name
    respond_to do |format|
      format.html { redirect_to subject_carrer_users_url, notice: 'Subject carrer user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_carrer_user
      @subject_carrer_user = SubjectCarrerUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_carrer_user_params
      params.require(:subject_carrer_user).permit(:points, :subject_id, :carrer_user_id, :name)
    end
end
