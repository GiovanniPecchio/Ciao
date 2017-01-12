class Form < ActiveRecord::Base
  belongs_to :user
  has_many :submissions, :dependent => :destroy
  has_many :students
  has_many :teachers
  has_many :subjects

  has_attached_file :image, styles: { medium: "400x600>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
