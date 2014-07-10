class CreateUsersAndVideos < ActiveRecord::Migration

  def change

    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    create_table :videos do |t|
      t.belongs_to :user
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
