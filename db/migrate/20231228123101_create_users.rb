class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false, default: ''
      t.text :details
      t.references :lead, null: false, foreign_key: true

      t.timestamps
    end
  end
end