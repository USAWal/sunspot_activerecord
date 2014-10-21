class PostWithAuto < ActiveRecord::Base
  self.table_name = 'posts'

  searchable ignore_attribute_changes_of: [ :updated_at ] do
    string :title
    text :body, more_like_this: true
  end
end
