class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :level
      t.integer :user_id

      t.timestamps
    end
  end
end
