class Post < ActiveRecord::Base

  has_many :blog_comments
  has_many :tags

end
