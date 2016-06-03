class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
