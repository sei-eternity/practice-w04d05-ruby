##
# TODO: Add Comments to BlogPost Class

class BlogPost
  attr_reader :title, :content, :owner

  def initialize(title, content, owner = nil)
    @title, @content, @owner = title, content, owner
  end

  def edit(title, content)
    if title.empty? || content.empty?
      puts "Empty parameters are not allowed!"
    else
      puts "Ready to Edit the Post"
    end
  end
end