class RenameObjectInContactsToObjet < ActiveRecord::Migration[7.0]
  def change
    rename_column :contacts, :object, :objet
end
end
