class AddSpeciesToPets < ActiveRecord::Migration[5.2]
  def change
    add_column(:pets, :species, :string)
  end
end
