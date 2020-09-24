class AddPhotosToPost < ActiveRecord::Migration[6.0]
  def change
     add_column :posts, :photos, :string
  end
end
