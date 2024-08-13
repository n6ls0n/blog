# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.find_by(email: "nelson@n6ls0n.com")
user.destroy if user
user = User.new(email: "nelson@n6ls0n.com")

user.update!(
  password: "password",
  password_confirmation: "password"
)


100.times do |i|
  blog_post = BlogPost.where(title: "Blog Posts #{i}").first_or_initialize
  blog_post.update(content: "Hello world. This is blog post number #{i}.", published_at: Time.current)
end
