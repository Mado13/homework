class AddAmenitiesToSpaces < ActiveRecord::Migration[6.1]
  def change
    add_column :spaces, :amenities, :string
  end
end
