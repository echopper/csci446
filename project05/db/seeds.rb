# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all

160.times do
  Article.create(title: 'Lorem Ipsum',
    author_id: 1,
    body: 
      %{<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae eleifend nunc. Aenean eleifend lorem sit amet mauris eleifend rhoncus. Duis pellentesque nulla sed diam hendrerit vitae egestas augue molestie. In posuere augue consectetur mi posuere sit amet auctor ipsum laoreet. Donec vehicula, nulla ut convallis fermentum, massa risus accumsan mi, nec egestas risus mauris scelerisque risus. Donec et blandit libero. Praesent malesuada facilisis elit, sed suscipit ipsum consequat condimentum. Integer sem ipsum, mollis vel tincidunt sed, gravida id purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin condimentum, mi quis euismod pharetra, lacus quam imperdiet tellus, id commodo sapien nulla quis lacus. Morbi dictum sapien eget quam gravida id posuere sapien lacinia. Nunc ullamcorper ullamcorper orci, vitae vulputate felis placerat quis. Maecenas luctus vehicula sollicitudin.</p>
<p>Nullam convallis sapien sit amet mi placerat adipiscing. Nunc egestas turpis non augue viverra vel consectetur nulla vehicula. Nullam eu ipsum sit amet massa tempus congue at id nulla. Curabitur iaculis sem vel odio blandit in eleifend enim auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec consequat porttitor urna vel laoreet. In id lacus dui, vel faucibus risus. Integer iaculis sagittis dolor vel vestibulum. Nunc ac lorem mi, vel gravida sapien. Integer sed lacus quis nisl commodo mollis laoreet ac dolor.</p>
<p>Proin ultricies commodo semper. Quisque vulputate suscipit mi at venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam eget libero ut elit dictum sollicitudin et eu lorem. Mauris ante massa, sollicitudin quis iaculis suscipit, ultricies quis ligula. Vivamus commodo consequat orci quis consectetur. Morbi sit amet tristique dui. Sed quis magna vitae tortor tincidunt pretium. Phasellus porttitor tortor ac sem porttitor blandit. Aenean sodales risus non orci facilisis volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas risus orci, tempor id consequat eget, molestie non odio. Integer dictum, urna quis posuere venenatis, elit lorem volutpat nunc, interdum malesuada felis magna id velit. Duis consectetur mi nec libero rhoncus vel ornare velit interdum. Morbi quis magna nec ligula adipiscing imperdiet eget eget augue.</p>})
end
