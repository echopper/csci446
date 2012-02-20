# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all

16.times do
  Article.create(title: 'Lorem Ipsum',
    author_name: 'Robert Frost',
    body: 
      %{<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque felis ut augue aliquet et mattis risus rhoncus. Integer in augue neque, vitae accumsan velit. Ut eros turpis, ornare congue commodo id, condimentum gravida purus. Nullam scelerisque, velit sed sagittis pharetra, leo lectus sagittis quam, malesuada tristique neque odio in est. Donec ut arcu lacinia leo sagittis sagittis eget id purus. Donec pretium viverra urna ac volutpat. Nam vel lacus est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vulputate, libero eget fringilla elementum, purus nibh facilisis arcu, vitae sagittis risus quam vitae ante. Aenean ornare eros at eros consequat non varius diam sagittis. Cras laoreet leo eget nisi semper vitae malesuada tellus vestibulum. Quisque ut pulvinar velit.</p>}) 
end
