class CreateCarmakes < ActiveRecord::Migration
  def change
    create_table :carmakes do |t|
      t.string :make

      t.timestamps
    end
  end
end
