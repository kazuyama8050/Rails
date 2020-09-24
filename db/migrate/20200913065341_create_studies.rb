class CreateStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :studies do |t|
      t.string :title, null: false
      t.string :memo, null: false
      t.string :mine
      t.timestamps
    end
  end
end
