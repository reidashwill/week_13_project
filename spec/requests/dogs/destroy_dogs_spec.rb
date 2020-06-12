require 'rails_helper'

describe "delete dog route" do
  
  it 'will delete a dog and return correct message' do
    dog = Dog.create!({name: 'Elvis', age: "7"})
    delete "/dogs/#{dog.id}"
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)['message']).to eq ("You've successfully deleted this dog")
  end

  it 'will return an error message if we try and delete a dog that does not exist' do
    dog = Dog.create!({name: 'Elvis', age: "7"})
    delete "/dogs/#{dog.id}"
    delete "/dogs/#{dog.id}"
    expect(response).to have_http_status(404)
    expect(JSON.parse(response.body)['message']).to eq ("Couldn't find Dog with 'id'=#{dog.id}")
  end
end