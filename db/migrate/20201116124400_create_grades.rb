class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.integer :score
      t.references :wine, null: false, foreign_key: true
      t.references :enologist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
