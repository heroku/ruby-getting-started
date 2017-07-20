class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.integer :age
      t.string :owner

      t.timestamps null: false
    end
  end
end
