class Subject < ApplicationRecord
  belongs_to :carrer
  has_many :subject_carrer_users
end
