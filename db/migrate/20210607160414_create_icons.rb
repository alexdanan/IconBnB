class CreateIcons < ActiveRecord::Migration[6.0]
  def change
    create_table :icons do |t|

      t.timestamps
    end
  end
end
