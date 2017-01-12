class Subject < ActiveRecord::Base
  has_many :submissions, :dependent => :destroy
  belongs_to :form
end
