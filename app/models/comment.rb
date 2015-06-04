class Comment < ActiveRecord::Base
  has_many :tags
  belongs_to :user
  belongs_to :post
end
