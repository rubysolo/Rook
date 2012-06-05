require 'dm-sweatshop'

Rook::User.fixture {{
  :username => 'DecoyDrone',
  :email => 'faker@me.com',
  :password => 'doobar',
  :password_confirmation => 'doobar'
}}

Rook::User.fixture(:opp) {{
  :username => (username = /\w+/.gen),
  :email => "#{username}@example.com",
  :password => (password = /\w+/.gen),
  :password_confirmation => password,
  :opportunities => 5.of {Rook::Opportunity.make} 
}}

Rook::Opportunity.fixture {{
  :title => %w(This is title)[rand(3)],
  :skills => %w(Ruby)[rand(1)],
  :description => %w(This is a description)[rand(4)]
}}


