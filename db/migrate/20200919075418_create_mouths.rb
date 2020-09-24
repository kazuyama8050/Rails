class CreateMouths < ActiveRecord::Migration[6.0]
  def change
    create_table :mouths do |t|
      t.string :company, null: false
      t.string :category, null: false
      t.string :title, null: false
      t.integer :sex, null: false, default: 0
      t.date :write_day
      t.string :yourself
      t.string :subject
      t.string :content, null: false
      t.string :mine
      t.timestamps
    end
  end
end
