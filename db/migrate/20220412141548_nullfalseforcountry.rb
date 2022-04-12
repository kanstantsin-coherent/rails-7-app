class Nullfalseforcountry < ActiveRecord::Migration[7.0]
  def change
    change_column_null :countries, :name, false
  end
end
