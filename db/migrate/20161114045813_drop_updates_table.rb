class DropUpdatesTable < ActiveRecord::Migration
  def change
  	drop_table :Updates
  end
end
