class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :first_number
      t.integer :second_number
      t.integer :third_number

      t.timestamps null: false
    end
  end
end
