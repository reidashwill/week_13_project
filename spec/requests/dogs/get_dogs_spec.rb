require 'rails_helper'

describe 'get all dogs route' do
  before {get '/dogs'}

  it 'returns all dogs' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe 'get random dog route' do
  
  before{get '/dogs/random'}
  
  first = Dog.first.id
  last = first + Dog.count
  it 'returns a random dog' do
    expect(JSON.parse(response.body)['id']).to be_between(first, last)
  end
end