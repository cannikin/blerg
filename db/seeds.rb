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
  :body => <<-BODY
Stumptown godard migas before they sold out swag, shoreditch 8-bit post-ironic gastropub. Shabby chic thundercats bespoke semiotics listicle, iPhone put a bird on it man braid stumptown tilde. Plaid seitan tacos stumptown. Everyday carry bushwick 90's tacos. Marfa bespoke helvetica, flexitarian fashion axe meditation pop-up wolf four dollar toast hammock keffiyeh. Gochujang freegan pinterest before they sold out man bun, dreamcatcher keffiyeh kinfolk iPhone mixtape. Kinfolk fingerstache locavore pabst health goth.

Polaroid lomo helvetica +1 bicycle rights. Asymmetrical pickled viral cliche umami food truck, helvetica art party. Waistcoat messenger bag portland tattooed, put a bird on it gentrify intelligentsia salvia photo booth vegan selvage literally 8-bit. 90's ethical banjo, try-hard pitchfork typewriter actually. Mlkshk blue bottle farm-to-table intelligentsia XOXO deep v. Fashion axe ennui next level blog authentic, butcher kinfolk yr cardigan selfies pitchfork portland synth. Marfa keytar gluten-free chicharrones actually skateboard drinking vinegar.

Drinking vinegar dreamcatcher tousled cornhole meh actually. Scenester tattooed lumbersexual literally keffiyeh 90's crucifix. Vinyl tousled four dollar toast microdosing, artisan crucifix deep v marfa dreamcatcher kogi brunch freegan trust fund. Etsy keytar four dollar toast, quinoa small batch DIY hella fixie taxidermy whatever portland. Selvage portland swag tousled, pour-over taxidermy lo-fi iPhone letterpress chicharrones thundercats tattooed williamsburg. Farm-to-table craft beer 3 wolf moon keffiyeh neutra. Readymade sriracha beard portland meh, 3 wolf moon kombucha hoodie gastropub pitchfork lomo flexitarian squid authentic man braid.
BODY
)

Post.where(
  :user => User.first,
  :title => 'Some random thoughts...'
).first_or_create(
  :body => <<-BODY
Cardigan jean shorts photo booth ugh, truffaut direct trade kitsch craft beer XOXO actually ethical fixie scenester. Paleo affogato ennui poutine. Marfa lomo helvetica fingerstache wolf tousled ugh, bespoke literally mumblecore synth intelligentsia cornhole seitan tilde. Kale chips blog intelligentsia, kombucha pitchfork chillwave shabby chic artisan occupy raw denim sustainable gastropub before they sold out. Banh mi meggings ennui, green juice bushwick PBR&B beard. Art party DIY waistcoat viral, poutine intelligentsia 8-bit. Cliche four dollar toast quinoa try-hard schlitz.

Yuccie deep v banjo raw denim. Master cleanse try-hard polaroid typewriter photo booth neutra chambray shabby chic ugh. Mlkshk ethical keffiyeh, brooklyn lo-fi disrupt health goth gentrify chartreuse plaid tousled cornhole. Dreamcatcher selvage scenester mumblecore, cliche tacos mixtape bushwick. Williamsburg photo booth mumblecore, YOLO gochujang XOXO wayfarers lomo fingerstache hella selfies cronut tattooed. Kale chips vegan thundercats roof party, stumptown skateboard listicle cliche. Before they sold out raw denim freegan fashion axe.
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

Integer sollicitudin imperdiet risus, sed interdum sapien consectetur ac. Sed sed velit vitae erat lobortis rutrum. Donec eu sollicitudin nulla, vitae commodo lacus. Aliquam nec sem arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer at turpis urna.
BODY
)

Comment.where(
  :post => Post.first,
  :name => 'Billy Bob'
).first_or_create(
  :body => <<-BODY
Sed porttitor, ligula nec sollicitudin efficitur, neque leo molestie lacus, ut pellentesque sem ex at ante. Suspendisse aliquam fringilla rutrum. Nulla in velit in dui aliquam semper tristique in sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Mauris tincidunt tempus lorem, et facilisis nunc lacinia vitae. Aenean ac dolor quis mauris finibus gravida. Sed placerat non nibh ut placerat. Praesent ligula augue, condimentum a purus sit amet, imperdiet volutpat nunc.
BODY
)
