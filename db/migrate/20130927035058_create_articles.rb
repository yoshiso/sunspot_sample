class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :content
      t.timestamp :published_at

      t.timestamps
    end
  end
end
