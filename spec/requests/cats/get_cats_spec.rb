require 'rails_helper'

describe 'get all cats route' do
  before {get '/cats'}

  it 'returns all cats' do
    expect(JSON.parse(response.body).size).to eq(16)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end