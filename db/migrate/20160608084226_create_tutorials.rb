class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
	  t.references :tutorial_category, index: true, foreign_key: true
	  t.references :tutorial_level, index: true, foreign_key: true
	  
      t.timestamps null: false
    end
  end
end
