class CreateRoomUses < ActiveRecord::Migration[7.0]
  def change
    create_table :room_uses do |t|
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps 
    end
  end
end
