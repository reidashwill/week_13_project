require 'rails_helper'

describe 'update dog route' do
  it 'will update a dog and return correct message' do
    dog = Dog.create!({name: 'Elvis', age: "6", breed: "test"})
    patch "/dogs/#{dog.id}", params: {:name => 'Maynard'}
    expect(JSON.parse(response.body)['message']).to eq ("This dog has been successfully updated")
    expect(response).to have_http_status(200)
  end
end  