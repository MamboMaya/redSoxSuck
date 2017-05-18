class RemoveAttributeFromTeam < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :city, :string
  end
end
