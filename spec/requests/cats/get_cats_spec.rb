require 'rails_helper'

describe 'all  get cats routes' do
  before(:all) {Cat.destroy_all}
  before(:all) { 5.times do
    Cat.create!(
    name: Faker::Creature::Cat.name,
    age: rand(1..9),
    breed: Faker::Creature::Cat.breed
  ) 
  end}
 
  it 'returns all cats' do
    get '/cats'
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    get '/cats'
    expect(response).to have_http_status(:success)
  end

  it 'returns a random cat' do
    get '/cats/random'
    first = Cat.first.id
    last = first + Cat.count
    expect(JSON.parse(response.body)['id']).to be_between(first, last-1)
end

  before {get '/cats/search?query=smudge'}
  it 'returns cats with the name poppy' do
    expect(response).to have_http_status(:success)
  end


  it 'returns cats that are the breed Khao' do
    get '/cats/breed?query=Khao'
    expect(response).to have_http_status(:success)
  end
end
  



  
