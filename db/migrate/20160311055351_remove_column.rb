class RemoveColumn < ActiveRecord::Migration
  def change
		remove_column :reviews, :rating
  end
end
