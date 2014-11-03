class BlogStringToText < ActiveRecord::Migration
  def up
    change_column :blogs, :content, :text
  end
end
