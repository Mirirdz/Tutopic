class PagesController < ApplicationController
  def index
  end

  def profile
     @carrer_users = CarrerUser.all.where(user_id:current_user.id)
     @subject_carrer_users = SubjectCarrerUser.all
  end

  def carrers
  	@carrers = Carrer.all
  end
end
