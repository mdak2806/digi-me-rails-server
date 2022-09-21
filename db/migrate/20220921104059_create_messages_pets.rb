class CreateMessagesPets < ActiveRecord::Migration[5.2]
  def change
    create_table :messages_pet, :id => false do |t|
      t.integer :message_id
      t.integer :pet_id
    end
  end
end
