##
# Include needed Classes from the same Folder
require "./blog_post" # Include the BlogPost Class
require "./user"      # Include the User Class
require "./admin"     # Include the Admin Class

##
# Create an instance of the User Class.
#
# By providing user account details such as the username,
# first_name, last_name, and email.

user_ahlam = User.new("ahlam", "Ahlam", "Almusallam", "ahlam@ga.co")


# Create dummy blog posts for `user_ahlam`.
post_ahlam_1 = BlogPost.new("Hello World 1", "SEI Rocks!", user_ahlam)
post_ahlam_2 = BlogPost.new("Hello World 2", "SEI Rocks!", user_ahlam)
post_ahlam_3 = BlogPost.new("Hello World 3", "SEI Rocks!", user_ahlam)


# The number of blog posts for `user_ahlam` before adding any dummy posts.
puts "user_ahlam: #{user_ahlam.posts.length}" # => 0

# Add the 3 dummy blog posts to the Users @posts Array (Class Property)
user_ahlam.posts.push(post_ahlam_1, post_ahlam_2, post_ahlam_3)

# The number of blog posts for `user_ahlam` after adding the dummy posts.
puts "user_ahlam: #{user_ahlam.posts.length}" # => 3

# Get the 2nd dummy blog post for `user_ahlam`.
puts "user_ahlam: #{user_ahlam.post_by_index(1)}" # => <BlogPost:0x00007fffed43c688>



##
# Create an instance of the Admin Class.
#
# By providing admin account details such as the username,
# first_name, last_name, and email which it inherited from
# the User Class.

admin_user_waleed = Admin.new("waleed", "Waleed", "Mastour", "waleed@ga.co")


# Create dummy blog posts for `admin_user_waleed`.
post_waleed_1 = BlogPost.new("Hello World 1", "SEI Rocks!", admin_user_waleed)
post_waleed_2 = BlogPost.new("Hello World 2", "SEI Rocks!", admin_user_waleed)
post_waleed_3 = BlogPost.new("Hello World 3", "SEI Rocks!", admin_user_waleed)
post_waleed_4 = BlogPost.new("Hello World 4", "SEI Rocks!", admin_user_waleed)

# The number of blog posts for `admin_user_waleed` before adding any dummy posts.
puts "admin_user_waleed: #{admin_user_waleed.posts.length}" # => 0

# Add the 4 dummy blog posts to the Admin<User> @posts Array (Class Property)
admin_user_waleed.posts.push(post_waleed_1, post_waleed_2, post_waleed_3, post_waleed_4)

# The number of blog posts for `admin_user_waleed` after adding the dummy posts.
puts "admin_user_waleed: #{admin_user_waleed.posts.length}" # => 4

# Find the 3rd dummy blog post for `admin_user_waleed`
# adn delete it from the Admin<User> @posts Array (Class Property).
admin_user_waleed.delete_post_by_index(2)

# The number of blog posts for `admin_user_waleed` after deleting a dummy post.
puts "admin_user_waleed: #{admin_user_waleed.posts.length}" # => 3