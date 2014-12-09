class CreateStrategies < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.text :title
      t.text :intro

      t.timestamps
    end
  end
end
