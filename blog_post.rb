##
# TODO: Add Comments to BlogPost Class
#Creat BlogPost class 
class BlogPost
  attr_reader :title, :content, :owner
  # initialize method with 3 parameters  
  def initialize(title, content, owner = nil)
    #setting the parameters to instance variables 
    @title, @content, @owner = title, content, owner
  end
# Edit method 
  def edit(title, content)
    #checks if the passed title or content in main.rb file is empty !
    if title.empty? || content.empty?
      #if true print message 
      puts "Empty parameters are not allowed!"
    else
      #if false print message 
      puts "Ready to Edit the Post"
    end
  end
end