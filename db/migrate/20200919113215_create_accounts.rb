class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts, id: false do |t|
      t.string :mine, null: false
      t.integer :birthday
      t.integer :sex, null: false, default: 0
      t.string :educate
      t.string :subject
      t.string :charm
      t.string :hardy
      t.timestamps
    end
  end
end
