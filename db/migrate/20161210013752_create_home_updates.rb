class CreateHomeUpdates < ActiveRecord::Migration
  def change
    create_table :home_updates do |t|

      t.timestamps null: false
    end
  end
end
