##
# Creat a User Class that will contain user profile information.
# Along with all of the Blog Posts owned by the individual user.

class User
  ##
  # Setup our Getter and Setter methods for (Class Properties)
  attr_accessor :username, :first_name, :last_name,
                :email, :posts

  def initialize(username, first, last, email)
    @username, @first_name, @last_name, @email = username, first, last, email

    # Initialize the @posts Array (Class Property) as an empty Array.
    @posts = []
  end

  ##
  # Prints the Users Profile
  #
  # => "<h1>Ahlam Almusallam</h1>: ahlam@ga.co"
  def profile
    puts "<h1>#{@first_name} #{@last_name}: #{@email}</h1>"
  end

  ##
  # Prints the Users Full Name
  #
  # => "Ahlam Almusallam"
  def full_name
    puts "#{@first_name} #{@last_name}"
  end

  ##
  # Send an email to the Users Email Address
  #
  # => "Sending an email to ahlam@ga.co"
  def send_email
    puts "Sending an email to #{@email}"
  end

  ##
  # Return a single BlogPost requested by the User based on
  # the Post Index in the @posts Array (Class Property).
  #
  # => <BlogPost:0x00007fffed43c688>
  def post_by_index(index)
    @posts[index]
  end
end


