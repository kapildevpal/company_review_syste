class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :headquarter
      t.integer :company_revenue
      t.string :comapany_detail
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
