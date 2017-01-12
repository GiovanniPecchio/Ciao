class AddSubjectIdtoSubmission < ActiveRecord::Migration
  def change
    add_column :submissions, :subject_id, :integer
  end
end
