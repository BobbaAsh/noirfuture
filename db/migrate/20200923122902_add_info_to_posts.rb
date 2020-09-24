class AddInfoToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :name, :string
    add_column :posts, :category, :string
  end
end
