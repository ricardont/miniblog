class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :recipient_id
      t.text :media

      t.timestamps
    end
  end
end