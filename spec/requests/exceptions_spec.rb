require 'rails_helper'

describe "post a pet route with exception handling error", :type => :request do

  before do
    post '/pets', params: { :breed => 'test_breed', :age => 5, :gender => 'female', :desc => 'A good boi', :name => 'Hank', :species => ''}
  end
  it 'returns a RecordInvalid error error' do
    expect(response).to have_http_status(422)
  end
end

describe "get a pet route with exception handling error", :type => :request do 
  before { get '/pets/200'}
  it 'returns a not found error' do
    expect(response).to have_http_status(:not_found)
  end
end