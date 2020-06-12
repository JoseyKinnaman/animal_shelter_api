describe "update a pet entry", :type => :request do

  it "will patch/update a pet entry" do
    new_pet = Pet.create!({ :breed => 'test_breed', :age => 5, :gender => 'female', :desc => 'A good boi', :name => 'Hank', :species => 'dog'})
    patch "/pets/#{new_pet.id}", params: {:name => 'Butch'}
    expect(response).to have_http_status(200)
  end

end