class SubjectCarrerUser < ApplicationRecord
  belongs_to :subject
  belongs_to :carrer_user
  

  def sum_points
  	carrer = self.carrer_user
  	user = self.carrer_user.user
  	points = SubjectCarrerUser.all.where(carrer_user_id: carrer_user.id).sum(:points)
  	carrer.points = points
  	carrer.save
  end

 	# def subject_user_name
 	# self.name = subject.name 
 	# self.save
 	# end

  
end
