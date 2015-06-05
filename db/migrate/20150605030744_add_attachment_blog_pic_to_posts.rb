class AddAttachmentBlogPicToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :blog_pic
    end
  end

  def self.down
    remove_attachment :posts, :blog_pic
  end
end
