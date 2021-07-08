class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :video_uri, null: false
      t.integer :user_id, null: false
      t.text :description
      t.string :audio_name
      t.string :audio_uri
      t.string :type

      t.timestamps
    end
  end
end
