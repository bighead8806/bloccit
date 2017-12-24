require 'random_data'
 50.times do
   Post.create!(
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
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 
 
 puts "#{Post.count}"
 uniquePost = Post.find_or_create_by(title: "Unique title for the assignment", body: "This is a unique thing.");
 puts "#{Post.count}"
 
 Comment.find_or_create_by(post: "uniquePost", body: "This comment will not appear in other places.");