require 'rails_helper'

describe 'all get dogs routes' do
  before(:all) {Dog.destroy_all}
  before(:all) { 5.times do
    Dog.create!(
    name: Faker::Creature::Dog.name,
    age: rand(1..9),
    breed: Faker::Creature::Dog.breed
  ) 
  end}

  it 'returns all dogs' do
    get '/dogs'
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    get '/dogs'
    expect(response).to have_http_status(:success)
  end
  
  it 'returns a random dog' do
    get '/dogs/random'
    first = Dog.first.id
    last = first + Dog.count
    expect(JSON.parse(response.body)['id']).to be_between(first, last-1)
  end

  it 'returns dogs with the name lilly' do
    get '/dogs/search?query=lilly'
    expect(response).to have_http_status(:success)
  end

  it 'returns dogs that are the breed Khao' do
    get '/dogs/breed?query=Terrier'
    expect(response).to have_http_status(:success)
  end
end