class CreateTrail < ActiveRecord::Migration[5.1]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :difficulty
      t.integer :mountain_id
    end
  end
end
