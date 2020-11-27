class CreateKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :keywords do |t|
      t.string :keyword
      t.string :synonyms
      t.string :entity

      t.timestamps
    end
  end
end
