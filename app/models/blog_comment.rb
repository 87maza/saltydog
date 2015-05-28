class BlogComment < ActiveRecord::Base

  has_many :comment_tags
  has_many :tags, through :comment_tags
end
