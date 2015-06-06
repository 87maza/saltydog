class Post < ActiveRecord::Base

  has_attached_file :blog_pic, :styles => {
                               :preview => "900x300>",
                               :large => "600x600>" },
                    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :blog_pic, :content_type => /\Aimage\/.*\Z/

  has_many :photos
  has_many :comments
  has_many :tags
  belongs_to :user

  accepts_nested_attributes_for :photos
end
