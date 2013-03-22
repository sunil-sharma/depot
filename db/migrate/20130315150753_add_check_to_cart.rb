class AddCheckToCart < ActiveRecord::Migration
  def change
    add_column :carts, :check, :boolean ,:default =>false 	
  end
end
