class CreateJoinTableAuthorStrategy < ActiveRecord::Migration
  def change
    create_join_table :authors, :strategies do |t|
       t.index [:author_id, :strategy_id]
       t.index [:strategy_id, :author_id]
    end
  end
end
