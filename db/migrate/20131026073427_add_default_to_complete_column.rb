class AddDefaultToCompleteColumn < ActiveRecord::Migration
  def up
    change_column :goals, :complete, :boolean, default: false
  end

  def down
    change_column :goals, :complete, :boolean, default: nil
  end
end
