class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|

      t.timestamps null: false
    end
  end
end
