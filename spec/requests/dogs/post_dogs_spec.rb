require 'rails_helper'

describe "post a dog route" do

  before do
    post '/dogs', params: {:name => 'Elvis', :age => '4', breed: "test"}
  end

  it 'returns the dogs information' do
    expect(JSON.parse(response.body)['name']).to eq ('Elvis')
    expect(JSON.parse(response.body)['age']).to eq(4)
  end


  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
 