class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :name
      t.references :posts
      t.timestamps
    end
  end
end
