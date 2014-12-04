class AddPictureToGift < ActiveRecord::Migration
  def change
    add_column :gifts, :picture, :string
  end
end
