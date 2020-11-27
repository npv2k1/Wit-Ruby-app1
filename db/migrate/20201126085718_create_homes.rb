class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.string :user
      t.string :pass

      t.timestamps
    end
  end
end
