class BlogComment < ActiveRecord::Base

  has_many :tags
end
