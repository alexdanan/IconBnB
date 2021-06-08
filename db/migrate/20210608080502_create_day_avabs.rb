class CreateDayAvabs < ActiveRecord::Migration[6.0]
  def change
    create_table :day_avabs do |t|

      t.timestamps
    end
  end
end
