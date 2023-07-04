class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :user_username
      t.float :rating
      t.text :description

      t.timestamps
    end
  end
end
