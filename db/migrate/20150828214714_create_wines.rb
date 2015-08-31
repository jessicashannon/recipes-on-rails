class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.text :color
      t.string :url
      t.text :varietal

      t.timestamps null: false
    end
  end
end
