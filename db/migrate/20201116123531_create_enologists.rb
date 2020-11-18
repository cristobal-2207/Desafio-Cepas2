class CreateEnologists < ActiveRecord::Migration[6.0]
  def change
    create_table :enologists do |t|
      t.string :name

      t.timestamps
    end
  end
end
