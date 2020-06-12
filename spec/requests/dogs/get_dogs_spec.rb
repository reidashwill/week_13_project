require 'rails_helper'

describe 'get all dogs route' do
  before {get '/dogs'}

  it 'returns all dogs' do
    expect(JSON.parse(response.body).size).to eq(15)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end