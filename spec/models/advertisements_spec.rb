require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "New Advertisement Title", copy: "New Advertisement Copy", price: "New Advertisement Price") }
 
   describe "attributes" do
 # #2
     it "should respond to title" do
       expect(advertisement).to respond_to(:title)
     end
 # #3
     it "should respond to body" do
       expect(advertisement).to respond_to(:copy)
     end
     
      it "should respond to body" do
       expect(advertisement).to respond_to(:price)
     end
     
     
   end
end