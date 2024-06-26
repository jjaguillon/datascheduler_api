class CreateProfile < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.integer :role

      t.timestamps
    end

    add_index :profiles, [:user_id, :company_id], unique: true
  end
end
