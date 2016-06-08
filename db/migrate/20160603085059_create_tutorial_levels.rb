class CreateTutorialLevels < ActiveRecord::Migration
  def change
    create_table :tutorial_levels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
