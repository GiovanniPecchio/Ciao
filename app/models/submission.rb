class Submission < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher
  belongs_to :subject
  belongs_to :form
end
