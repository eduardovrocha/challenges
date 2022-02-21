class CreateUrlShorteners < ActiveRecord::Migration[6.1]
  def change
    create_table :url_shorteners do |t|
      t.text :url_given
      t.string :url_shortened, limit: 60

      t.timestamps
    end
  end
end
