include RandomData
 
 
 
 5.times do
   user = User.create!(
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all


15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all



 50.times do

   Post.create!(
     user:   users.sample,
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 




 100.times do
   Comment.create!(
     user: users.sample,
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 50.times do 
  Advertisement.create!(
  
  title: RandomData.random_sentence,
  copy:  RandomData.random_paragraph,
  price: RandomData.random_price
  )
 end
 
 
 50.times do 
  SponsoredPost.create!(
  
  title: RandomData.random_sentence,
  body:  RandomData.random_paragraph,
  price: RandomData.random_price
  )
 end
 
 

 50.times do 
  Question.create!(
  
  title: RandomData.random_sentence,
  body:  RandomData.random_paragraph,
  )
 end


moderator = User.create!(
   name:     'Moderator User',
   email:    'moderator@example.com',
   password: 'helloworld',
   role:     'moderator'
 )


admin = User.create!(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )
 

 member = User.create!(
   name:     'Member User',
   email:    'member@example.com',
   password: 'helloworld'
 )
 
 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Advertisement.count} adverts created"
 puts "#{Question.count} questions created"
 puts "#{Topic.count} topics created"
 puts "#{SponsoredPost.count} sponsored posts created"