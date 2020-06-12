require 'rails_helper'

describe 'update cat route' do
  it 'will update a cat and return correct message' do
    cat = Cat.create!({name: 'Ms. Purrsimmon', age: "3", breed: "test"})
    patch "/cats/#{cat.id}", params: {:name => 'Craig'}
    expect(JSON.parse(response.body)['message']).to eq ("This cat has been successfully updated")
    expect(response).to have_http_status(200)
  end
end 