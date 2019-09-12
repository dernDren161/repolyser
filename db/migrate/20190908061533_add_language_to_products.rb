class AddLanguageToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :language, :string
  end
end
