class AddAttachmentImageToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :lessons, :image
  end
end
