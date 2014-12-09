class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.text :title
      t.references :strategy_id, index: true

      t.timestamps
    end
  end
end
