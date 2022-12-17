class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags, :content
  belongs_to :author
  
  # Struggling to get the list of associated tags for the post. I used an association that didn't work has_many :tags, just put it in.
  def short_content
    "#{self.object.content[0..39]}..."
  end

end
