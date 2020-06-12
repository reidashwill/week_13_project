# require 'rails_helper'

# describe "delete cat route" do
  
#   it 'will delete a cat and return correct message' do
#     cat = Cat.create!({name: 'Ms. Purrsimmon', age: "3"})
#     delete "/cats/#{cat.id}"
#     expect(response).to have_http_status(200)
#     expect(JSON.parse(response.body)['message']).to eq ("You've successfully deleted this cat")
#   end
 
#   it 'will return an error message if we try and delete a cat that does not exist' do
#     cat = Cat.create!({name: 'Ms. Purrsimmon', age: "3"})
#     delete "/cats/#{cat.id}"
#     delete "/cats/#{cat.id}"
#     expect(response).to have_http_status(404)
#     expect(JSON.parse(response.body)['message']).to eq ("Couldn't find Cat with 'id'=#{cat.id}")
#   end
# end