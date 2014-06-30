class RenameColumnInCarmakes < ActiveRecord::Migration
  def change
    change_table :carmakes do |t|
    t.rename :country, :car_country
    end
  end
end
