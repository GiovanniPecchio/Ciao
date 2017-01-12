class AddFormIdtoSubmission < ActiveRecord::Migration
  def change
    add_column :submissions, :form_id, :integer
  end
end
