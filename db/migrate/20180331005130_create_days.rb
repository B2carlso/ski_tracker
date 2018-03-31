class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.integer :ski_days
      t.integer :user_id
    end
  end
end
