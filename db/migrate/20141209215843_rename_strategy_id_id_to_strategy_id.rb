class RenameStrategyIdIdToStrategyId < ActiveRecord::Migration
  def change
  	rename_column :tips, :strategy_id_id, :strategy_id
  end
end
