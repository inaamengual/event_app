class AddChangesToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :company_name, :string
    add_column :companies, :address, :string
    add_column :companies, :phone_number, :string
    add_column :companies, :service_distance, :integer
    add_column :companies, :category, :string
  end
end
