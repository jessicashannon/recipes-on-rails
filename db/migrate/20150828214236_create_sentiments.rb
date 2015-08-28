class CreateSentiments < ActiveRecord::Migration
  def change
    create_table :sentiments do |t|
      t.string :sentiments

      t.timestamps null: false
    end
  end
end
