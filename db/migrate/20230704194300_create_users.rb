class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :contact
      t.string :image
      t.text :bio
      t.string :location

      t.timestamps
    end
  end
end
