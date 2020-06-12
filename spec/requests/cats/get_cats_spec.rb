require 'rails_helper'

describe 'get all cats route' do
  before {get '/cats'}

  it 'returns all cats' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe 'get random cat route' do
  before{get '/cats/random'}
  it 'returns a random cat' do
    expect(JSON.parse(response.body)['id']).to be_between(182, 196)
  end
end
