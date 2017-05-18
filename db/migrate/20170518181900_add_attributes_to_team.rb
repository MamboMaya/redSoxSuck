class AddAttributesToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :football, :boolean
    add_column :teams, :baseball, :boolean
    add_reference :teams, :city, foreign_key: true
  end
end
