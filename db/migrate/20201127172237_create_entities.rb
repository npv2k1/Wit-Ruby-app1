class CreateEntities < ActiveRecord::Migration[6.0]
  def change
    create_table :entities do |t|
      t.string :intent
      t.string :entity

      t.timestamps
    end
  end
end
