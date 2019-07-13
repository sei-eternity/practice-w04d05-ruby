##
# TODO: Add Comments to BlogPost Class
#Creat a class that will contain posts infos = title, content and owner
class BlogPost
  # setup getters and setters 
  attr_reader :title, :content, :owner

  # Initialize the class Properties 
  def initialize(title, content, owner = nil)
    @title, @content, @owner = title, content, owner
  end

# this method prints one of two texts depending on whether the title and 
# content are empty or not
  def edit(title, content)
    if title.empty? || content.empty?
      puts "Empty parameters are not allowed!"
    else
      puts "Ready to Edit the Post"
    end
  end
end