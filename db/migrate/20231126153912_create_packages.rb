class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :desctription
      t.integer :price_session
      t.integer :price_three_sessions
      t.integer :price_five_sessions
      t.integer :price_ten_sessions
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
