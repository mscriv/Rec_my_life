class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :start_time
      t.string :venue_name
      t.string :venue_address
      t.string :url
      t.references :category, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
