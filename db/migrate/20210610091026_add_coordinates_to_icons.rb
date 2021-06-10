class AddCoordinatesToIcons < ActiveRecord::Migration[6.0]
  def change
    add_column :icons, :latitude, :float
    add_column :icons, :longitude, :float
  end
end
