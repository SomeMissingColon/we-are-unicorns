class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.string :status
      t.decimal :amount

      t.timestamps
    end
  end
end
