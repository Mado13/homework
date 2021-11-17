class CreateSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :spaces do |t|
      t.string :address
      t.string :description
      t.string :name
      t.boolean :availability, default: true
      t.decimal :rating
      t.string :workspace_type
      t.decimal :price
      t.string :amenities
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
