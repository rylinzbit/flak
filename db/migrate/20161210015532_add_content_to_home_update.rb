class AddContentToHomeUpdate < ActiveRecord::Migration
  def change
    add_column :home_updates, :content, :string
  end
end
