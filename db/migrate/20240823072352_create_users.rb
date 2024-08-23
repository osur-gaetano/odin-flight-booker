class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username, limit: 20
      t.string :email, limit: 20
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
