class Lesson < ActiveRecord::Base
	validates :title, :description, presence: true
  has_attached_file :image, styles: { medium: "300x200>", thumb: "100x66>" }, default_url: "/images/:style/chainmail_bg.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/	
end
