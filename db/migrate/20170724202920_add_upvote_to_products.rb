class AddUpvoteToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :upvote, :integer, :default => 0
  end
end
