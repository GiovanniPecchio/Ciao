class AddFormIdtoSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :form_id, :integer
  end
end
