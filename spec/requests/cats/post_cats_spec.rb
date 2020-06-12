require 'rails_helper'

describe "post a cat route" do

  before do
    post '/cats', params: {:name => 'Mr. Bungle', :age => '19'}
  end

  it 'returns the cats name' do
    expect(JSON.parse(response.body)['name']).to eq ('Mr. Bungle')
  end

  it 'returns the cats age' do
    expect(JSON.parse(response.body)['age']).to eq(19)
  end


  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end

