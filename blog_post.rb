##
# TODO: Add Comments to BlogPost Class
#this is the tamplate for the blog posts all blogs have these methods and attrebute

class BlogPost
  # make the title & content & owner readable in all the class
  attr_reader :title, :content, :owner
# initialize the title & content & owner with each new BolgPost
# if no owner provided then make owner nil
  def initialize(title, content, owner = nil)
    @title, @content, @owner = title, content, owner
  end
# check if the title or content is empty
  def edit(title, content)
    if title.empty? || content.empty?
      puts "Empty parameters are not allowed!"
    else
      puts "Ready to Edit the Post"
    end
  end
end