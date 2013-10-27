class AmendListsTableToProfile < ActiveRecord::Migration
  def up
    rename_table :lists, :profiles
    remove_column :profiles, :list_item_id
  end

  def down
    rename_table :profiles, :lists
    add_column :lists, :list_item_id
  end
end
