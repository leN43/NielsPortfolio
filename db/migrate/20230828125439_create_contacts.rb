class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :nom
      t.string :email
      t.string :object
      t.text :message

      t.timestamps
    end
  end
end
