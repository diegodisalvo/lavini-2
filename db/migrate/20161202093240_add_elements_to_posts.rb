class AddElementsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :connection, :string
    add_column :posts, :publishing_date, :date
    add_column :posts, :video_url, :string
  end
end
