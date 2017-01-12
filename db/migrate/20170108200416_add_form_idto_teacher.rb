class AddFormIdtoTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :form_id, :integer
  end
end
