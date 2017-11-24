class RemoveDataInDb < ActiveRecord::Migration[5.0]
  def change
    Dose.delete_all
    Cocktail.delete_all
  end
end
