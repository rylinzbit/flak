class BlogComment < ActiveRecord::Base
  belongs_to :blog

  validates :name, :comment, presence: true
end
