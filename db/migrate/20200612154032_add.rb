class Add < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.column :type, :string
      t.column :breed, :string
      t.column :age, :integer
      t.column :gender, :string
      t.column :desc,  :string
    end
  end
end
