class AddCheckToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :check, :integer,:default =>0
  end
end
