# create default user
User.where(
  :email => 'owner@blerg.com',
  :name => 'John Doe'
).first_or_create(
  :password => 'blerg',
  :password_confirmation => 'blerg'
)
