class AddColumnsToSpaces < ActiveRecord::Migration[6.1]
  def change
    add_column :spaces, :city, :string
    add_column :spaces, :country, :string
    add_column :spaces, :street, :string
    add_column :spaces, :street_number, :integer
  end
end
