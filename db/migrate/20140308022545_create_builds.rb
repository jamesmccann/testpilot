class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.integer :number
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
