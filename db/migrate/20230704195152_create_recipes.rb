class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :procedure
      t.integer :user_id
      t.string :image_url

      t.timestamps
    end
  end
end
