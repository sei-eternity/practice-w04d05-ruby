##
# TODO: Add Comments to BlogPost Class

class BlogPost
  # Setup our Getter and Setter methods for (Class Properties)
  attr_reader :owner
  attr_accessor :title, :content

  def initialize(title, content, owner = nil)
    @title, @content, @owner = title, content, owner
  end

  ##
  # edit method takes two parameters (title, content)
  # first checks if any of the parameters are missing
  # else it will allow the user to edit the post
  #
  def edit(title, content)
    if title.empty? || content.empty?
      puts "Empty parameters are not allowed!"
    else
      self.title = title
      self.content = content
    end
  end
end