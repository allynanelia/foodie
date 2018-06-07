class CreateFood < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.string :price, null: false

      t.timestamps
    end
  end
end
