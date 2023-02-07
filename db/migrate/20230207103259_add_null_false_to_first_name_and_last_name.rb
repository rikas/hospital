class AddNullFalseToFirstNameAndLastName < ActiveRecord::Migration[7.0]
  change_column :doctors, :first_name, :string, null: false
  change_column :doctors, :last_name, :string, null: false
end
