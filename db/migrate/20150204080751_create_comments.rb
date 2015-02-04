class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :event
      t.text :content
      t.timestamps
    end
  end
end
