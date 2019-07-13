##
# TODO: Add Comments to BlogPost Class

## 
# Craete the Blogpost class that will contain the post information 
class BlogPost
  ##
  # Setup our Getter and Setter methods for (Class Properties)
  ##
  attr_reader :title, :content, :owner
##
# the Properties title , content and owner
#the 'owner=nill' id a default value 
  def initialize(title, content, owner = nil)
    @title, @content, @owner = title, content, owner
  end
## 
# Create a 'edit' function with two attribute 
# it's contains a condition to check if one of the title or content is empty 
##
  def edit(title, content)
    if title.empty? || content.empty?
      puts "Empty parameters are not allowed!"# if it's empty
    else
      puts "Ready to Edit the Post"#if it's not empty 
    end
  end
end