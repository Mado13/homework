class CreateSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :spaces do |t|
      t.string :address
      t.string :description
      t.string :name
      t.boolean :availability
      t.decimal :rating
      t.string :type
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
