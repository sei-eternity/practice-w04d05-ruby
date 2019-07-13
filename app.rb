##
# Include needed Classes from the same Folder
require "./blog_post" # Include the BlogPost Class
require "./user"      # Include the User Class
require "./admin"     # Include the Admin Class

# Create a new user (Bedour)
user_bedour = User.new("bedour", "Bedour", "Alrashed", "bedour@ga.co")

# Create posts for user (Bedour)
post_bedour_1 = BlogPost.new("Post #1", "Hello World!", user_bedour)
post_bedour_2 = BlogPost.new("Post #2", "Hello World!", user_bedour)
post_bedour_3 = BlogPost.new("Post #3", "Hello World!", user_bedour)

# Edit post #1 
post_bedour_1.edit("Post #1", "This is an edited post!")

# Add the created posts to the user's posts array
user_bedour.posts.push(post_bedour_1, post_bedour_2, post_bedour_3)


puts "User : "
# Prints the Users Full Name
user_bedour.full_name
puts " "

# Send an email to the Users Email Address => "bedour@ga.co"
user_bedour.send_email

puts " "
puts "Some info: "
# Print Bedour's profile
user_bedour.profile
puts " "

# Prints Bedour's posts
i = 0
while i < user_bedour.posts.length 
    puts "Post ##{i+1}"
    puts "Title : #{user_bedour.post_by_index(i).title}"
    puts "Content : #{user_bedour.post_by_index(i).content}"
    puts "Owner : #{user_bedour.post_by_index(i).owner.username}"
    puts "-----------------------"
    i += 1
end

#--------------------------------------------------------------------------------#
puts " "
puts " "
puts "Admin : "

# Creat an Admin user (Sara)
admin = Admin.new("admin_sara", "Sara", "Aziz", "sara@ga.co")
puts admin.full_name
puts " "

# Create posts for Admin user
post_admin_1 = BlogPost.new("Admin Post #1", "Hello World!", admin)
post_admin_2 = BlogPost.new("Admin Post #2", "Hello World!", admin)
post_admin_3 = BlogPost.new("Admin Post #3", "Hello World!", admin)

# Add the created posts to the user's posts array
admin.posts.push(post_admin_1, post_admin_2, post_admin_3)

# Prints Admin's posts
i = 0
while i < admin.posts.length 
    puts "Post ##{i+1}"
    puts "Title : #{admin.post_by_index(i).title}"
    puts "Content : #{admin.post_by_index(i).content}"
    puts "Owner : #{admin.post_by_index(i).owner.username}"
    puts "-----------------------"
    i += 1
end

# Delete post number 3
puts " "
admin.delete_post_by_index(2)
puts "Deleting post #3....."

# Check the posts length
puts "Posts array now contains: #{admin.posts.length} posts."