class AddFormIdtoStudent < ActiveRecord::Migration
  def change
    add_column :students, :form_id, :integer
  end
end
