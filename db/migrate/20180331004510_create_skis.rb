class CreateSkis < ActiveRecord::Migration[5.1]
  def change
    create_table :skis do |t|
      t.string :brand
      t.string :model
      t.integer :user_id
    end
  end
end
