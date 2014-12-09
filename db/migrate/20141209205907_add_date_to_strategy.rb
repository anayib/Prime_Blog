class AddDateToStrategy < ActiveRecord::Migration
  def change
    add_column :strategies, :date, :date
  end
end
