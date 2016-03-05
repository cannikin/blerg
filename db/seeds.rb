# Adds a default user, sample blog posts and comments

User.where(
  :email => 'owner@blerg.com',
  :name => 'John Doe'
).first_or_create(
  :password => 'blerg',
  :password_confirmation => 'blerg'
)

Post.where(
  :user => User.first,
  :title => 'The new blog is up!'
).first_or_create(
  :attachment => File.open(Rails.root.join('test','fixtures','files','cat.jpg')),
  :body => <<-BODY
Stumptown godard migas before they sold out swag, shoreditch 8-bit post-ironic gastropub. Shabby chic thundercats bespoke semiotics listicle, iPhone put a bird on it man braid stumptown tilde. Plaid seitan tacos stumptown. Everyday carry bushwick 90's tacos. Marfa bespoke helvetica, flexitarian fashion axe meditation pop-up wolf four dollar toast hammock keffiyeh. Gochujang freegan pinterest before they sold out man bun, dreamcatcher keffiyeh kinfolk iPhone mixtape. Kinfolk fingerstache locavore pabst health goth.

* Polaroid lomo helvetica +1 bicycle rights
* Asymmetrical pickled viral cliche umami food truck
* Helvetica art party.

Waistcoat messenger bag portland tattooed, put a bird on it gentrify intelligentsia salvia photo booth vegan selvage literally 8-bit. 90's ethical banjo, try-hard pitchfork typewriter actually. Mlkshk blue bottle farm-to-table intelligentsia XOXO deep v.
BODY
)

Post.where(
  :user => User.first,
  :title => 'Some random thoughts...'
).first_or_create(
  :body => <<-BODY
Cardigan jean shorts photo booth ugh, truffaut direct trade kitsch craft beer XOXO actually ethical fixie scenester. Paleo affogato ennui poutine. _Marfa lomo helvetica fingerstache wolf tousled ugh_, bespoke literally mumblecore synth intelligentsia cornhole seitan tilde. Kale chips blog intelligentsia, kombucha pitchfork chillwave shabby chic artisan occupy raw denim sustainable gastropub before they sold out.

Yuccie deep v banjo raw denim. **Master cleanse** try-hard polaroid typewriter photo booth neutra chambray shabby chic ugh. Mlkshk ethical keffiyeh, brooklyn lo-fi disrupt health goth gentrify chartreuse plaid tousled cornhole. Dreamcatcher selvage scenester mumblecore, cliche tacos mixtape bushwick. Williamsburg photo booth mumblecore, YOLO gochujang XOXO wayfarers lomo fingerstache hella selfies cronut tattooed. Kale chips vegan thundercats roof party, stumptown skateboard listicle cliche. Before they sold out raw denim freegan fashion axe.
BODY
)

Comment.where(
  :post => Post.first,
  :name => 'Jane Doe',
  :email => 'jane.doe@example.com'
).first_or_create(
  :body => <<-BODY
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a bibendum justo, ac aliquet odio. Nulla facilisi. Nulla urna dolor, semper vitae dolor at, semper aliquet nunc.

Nulla facilisi. Nam nulla dolor, imperdiet et dictum quis, commodo sit amet dui. Nam mauris tellus, porta et arcu fringilla, fermentum vehicula nibh. Curabitur posuere lobortis semper.
BODY
)

Comment.where(
  :post => Post.first,
  :name => 'Billy Bob'
).first_or_create(
  :body => <<-BODY
Sed porttitor, ligula nec sollicitudin efficitur, neque leo molestie lacus, ut pellentesque sem ex at ante. Suspendisse aliquam fringilla rutrum. Nulla in velit in dui aliquam semper tristique in sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
BODY
)
