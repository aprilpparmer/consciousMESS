#This file contains the data used to populate the database...

Ripple.delete_all
#...

def generate_url
  i = rand(3)
  if i==0
    url=""
  end
  if i==1 
    url=Faker::Internet.url
  end
  return url
end

def create_timestamp
  now = Time.now
  a_day_ago = now - 60 * 60 * 24

  random_time = rand(a_day_ago..now)
  return random_time
end

$i=0
$num=95
while $i<$num do
Ripple.create!(username: Faker::Internet.user_name,
	username_url: generate_url,
	message: Faker::Lorem.paragraph,
	created_at: create_timestamp)
$i+=1
end





