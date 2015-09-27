include RandomData
 


15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all



 50.times do

   Post.create!(
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 




 100.times do
   Comment.create!(

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

 
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Advertisement.count} adverts created"
 puts "#{Question.count} questions created"
 puts "#{Topic.count} topics created"
 puts "#{SponsoredPost.count} sponsored posts created"