class RemoveUsernameFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :user_username, :string
  end
end
