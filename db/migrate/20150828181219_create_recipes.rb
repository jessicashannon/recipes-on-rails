class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :url
      t.string :main_ingredient

      t.timestamps null: false
    end
  end
end
