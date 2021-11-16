class ChangeAmenitiesToTextInSpaces < ActiveRecord::Migration[6.1]
  def change
    change_column :spaces, :amenities, :text
  end
end
