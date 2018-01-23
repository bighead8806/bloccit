require 'rails_helper'

RSpec.describe Topic, type: :model do
  let(:name) { RandomData.random_sentence }
   let(:description) { RandomData.random_paragraph }
   let(:public) { true }
   
   let(:topic) { Topic.create!(name: name, description: description) }
   let(:post) { topic.posts.create!(title: title, body: body) }
 
   it { is_expected.to belong_to(:topic) }
   
   describe "attributes" do
     it "has name, description, and public attributes" do
       expect(post).to have_attributes(title: title, body: body)
    end
    
     it "is public by default" do
       expect(topic.public).to be(true)
     end
   end
end
