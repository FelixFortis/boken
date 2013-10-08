class CreateGoalsTable < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.text :description
      t.boolean :complete
    end
  end
end
