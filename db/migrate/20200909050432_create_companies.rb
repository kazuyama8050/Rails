class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :ids, null: false
      t.string :password, null: false
      t.string :link
      t.string :homepage
      t.string :memo
      t.string :mine
      t.timestamps
    end
  end
end
