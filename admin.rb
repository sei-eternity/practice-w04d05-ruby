##
# Include the User Class so we can inherit from it.
require "./user"

##
# Create a Admin Class based on the User Class.
#
# The Admin Class contains special actions that
# only an Admin should be able to perform.

class Admin < User
  ##
  # Delete a single BlogPost requested by the User based on
  # the Post Index in the @posts Array (Class Property).
  #
  # The method returns the delete blog post.
  #
  # => <BlogPost:0x00007fffed43c688>
  def delete_post_by_index(index)
    @posts.delete_at(index)
  end
  # the method shows the feedbacks for admins
  def show_feeds
    # feed.each do |val|
    #   p val
    # end
    for i in @feed
      p i
    end
  end
end