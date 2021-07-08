class CreateRemoveTypeColumnAndAddKindColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :type
    add_column :posts, :kind, :string
  end
end
