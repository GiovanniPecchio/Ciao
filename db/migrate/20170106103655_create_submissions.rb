class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :conflict
      t.string :computer
      t.integer :extra_time
      t.string :am_pm

      t.timestamps null: false
    end
  end
end
