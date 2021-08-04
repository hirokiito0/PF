class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :customer_id
      t.string  :game_title
      t.text    :game_introduction
      t.text    :recommended
      t.string  :game_image
      t.integer :prise

      t.timestamps
    end
  end
end
