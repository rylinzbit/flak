class AddTitleToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :title, :string
    add_column :lessons, :subtitle, :text
    add_column :lessons, :description, :text
    add_column :lessons, :extra_title, :string
    add_column :lessons, :extra_description, :text
    add_column :lessons, :photo, :string
  end
end
