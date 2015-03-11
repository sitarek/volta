class RemoveUnusedFieldsFromComment < ActiveRecord::Migration
  def change
    remove_column :comments, :event_id

    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
  end
end
