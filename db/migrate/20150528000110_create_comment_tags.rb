class CreateCommentTags < ActiveRecord::Migration
  def change
    create_table :comment_tags do |t|
      t.references :comment, index: true
      t.references :tag, index: true

      t.timestamps null: false
    end
    add_foreign_key :comment_tags, :comments
    add_foreign_key :comment_tags, :tags
  end
end
