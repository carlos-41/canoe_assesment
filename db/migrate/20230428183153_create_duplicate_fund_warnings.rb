class CreateDuplicateFundWarnings < ActiveRecord::Migration[7.0]
  def change
    create_table :duplicate_fund_warnings do |t|
      t.string :message
      t.bigint :fund_id_1
      t.bigint :fund_id_2
      
      t.timestamps
    end
  end
end
