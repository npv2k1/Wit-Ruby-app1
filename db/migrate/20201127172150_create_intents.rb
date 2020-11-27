class CreateIntents < ActiveRecord::Migration[6.0]
  def change
    create_table :intents do |t|
      t.string :intent

      t.timestamps
    end
  end
end
