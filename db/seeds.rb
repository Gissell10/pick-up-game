User.destroy_all
u1 = User.create :email => 'donal@clanduck.co', :password => 'chicken'
u2 = User.create :email => 'mcDuck@clanduck.co', :password => 'chicken'
u3 = User.create :email => 'huey@clanduck.co', :password => 'chicken'
u4 = User.create :email => 'dewey@clanduck.co', :password => 'chicken'
u5 = User.create :email => 'louie@clanduck.co', :password => 'chicken'
puts "#{ User.count } users"

Sport.destroy_all
s1 = Sport.create :title => 'Football', :image => '/images/sports/ppfootball.jpg'
s2 = Sport.create :title => 'basketball', :image => '/images/sports/ppbasketball.jpg'
s3 = Sport.create :title => 'fresbee', :image => '/images/sports/ppfresbee.jpg'
s4 = Sport.create :title => 'volleyball', :image => '/images/sports/ppvolleyball.jpg'
puts "#{ Sport.count } sport"

Event.destroy_all
e1 = Event.create :title => 'Sunday', :appointed => '2022-10-02',  :description => 'bring your own water the fountand is brokend', :arrival_time => '06:10'
e2 = Event.create :title => 'no excuses to exercise', :appointed => '2022-10-05',  :description => '100 dollars to the winner', :arrival_time => '02:10'
e3 = Event.create :title => 'Game day', :appointed => '2022-10-24',  :description => 'lest play some game', :arrival_time => '08:10'
e4 = Event.create :title => 'beginners welcome', :appointed => '2022-10-24',  :description => "don't be afraid to pop up", :arrival_time => '03:10'
puts "#{ Event.count} event"

e1.sport = s1
u1.events << e1
