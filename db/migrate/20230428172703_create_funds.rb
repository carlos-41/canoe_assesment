class CreateFunds < ActiveRecord::Migration[7.0]
  def change
    create_table :funds do |t|
      t.string :name
      t.integer :start_year
      t.text :aliases

      t.belongs_to :fund_manager, null: false

      t.timestamps
    end
  end
end
