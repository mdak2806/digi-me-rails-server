class DropMessagesPets < ActiveRecord::Migration[5.2]
  def change
    drop_table :messages_pets do |t|
      t.integer :messages_id
      t.integer :pets_id
      
    end
  end
end
