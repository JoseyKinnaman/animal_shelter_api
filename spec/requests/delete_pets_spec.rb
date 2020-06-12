require 'rails_helper'

describe "delete pets route", :type => :request do
  let!(:pets) { FactoryBot.create_list(:pet, 20)}

  before { delete '/pets/20'}

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
  
end