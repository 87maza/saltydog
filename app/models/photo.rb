class Photo < ActiveRecord::Base
  belongs_to :post
  has_attached_file :image, :styles => {
                                 :preview => "900x300>",
                                 :large => "600x600>" },
                    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
