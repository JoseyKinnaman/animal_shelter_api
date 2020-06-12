require 'rails_helper'

describe "post a pet route", :type => :request do

  before do
    post '/pets', params: { :breed => 'test_breed', :age => 5, :gender => 'female', :desc => 'A good boi', :name => 'Hank', :species => 'dog'}
  end

  it 'returns the breed name' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end

  it 'returns the pet age' do
    expect(JSON.parse(response.body)['age']).to eq(5)
  end

  it 'returns the pet gender' do
    expect(JSON.parse(response.body)['gender']).to eq('female')
  end

  it 'returns the pet description' do
    expect(JSON.parse(response.body)['desc']).to eq('A good boi')
  end

  it 'returns the pet name' do
    expect(JSON.parse(response.body)['name']).to eq('Hank')
  end

  it 'returns the pet breed' do
    expect(JSON.parse(response.body)['species']).to eq('dog')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end