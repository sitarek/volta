class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :place
      t.datetime :starts_at

      t.timestamps
    end
  end
end
