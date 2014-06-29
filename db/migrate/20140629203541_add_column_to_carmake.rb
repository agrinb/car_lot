class AddColumnToCarmake < ActiveRecord::Migration
  def change
    add_column :carmakes, :country, :string
  end
end
