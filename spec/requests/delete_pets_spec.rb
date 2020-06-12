require 'rails_helper'

describe "delete pets route", :type => :request do

  it "will delete a pet entry" do
    new_pet = Pet.create!({ :breed => 'test_breed', :age => 5, :gender => 'female', :desc => 'A good boi', :name => 'Hank', :species => 'dog'})
    delete "/pets/#{new_pet.id}"
    expect(response).to have_http_status(:200)
  end

end