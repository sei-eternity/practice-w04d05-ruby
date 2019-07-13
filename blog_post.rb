##
# TODO: Add Comments to BlogPost Class

class BlogPost # Declaring the setters and getters for the class properties
  attr_reader :title, :content, :owner
  # initializing the class properties
  def initialize(title, content, owner = nil)
    @title, @content, @owner = title, content, owner
  end
  # method edit will take title and content as arguments and
  #check, when title or content is empty will print
  # Empty parameters are not allowed!, 
  # otherwise it will print Ready to Edit the Post
  def edit(title, content)
    if title.empty? || content.empty?
      puts "Empty parameters are not allowed!"
    else
      puts "Ready to Edit the Post"
    end
  end

end