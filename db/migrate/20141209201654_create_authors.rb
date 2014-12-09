class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.text :name
      t.text :bio
      t.string :url_photo

      t.timestamps
    end
  end
end
