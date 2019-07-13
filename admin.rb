##
# Include the User Class so we can inherit from it.
require "./user"
require "./admin" 

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

  # This method as delete_post_by_index, But it givs the admin
  # abality to delete any post even User's Post

  # The method returns the delete blog post.
  def delete_any(user_post, index)
    user_post.posts.delete_at(index) # <BlogPost:0x00007feac490beb8>
  end
  
end