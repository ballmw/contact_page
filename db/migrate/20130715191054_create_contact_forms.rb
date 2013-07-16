class CreateContactForms < ActiveRecord::Migration
  def change
    create_table :contact_forms do |t|
      t.string :description
      t.boolean :enabled
      t.string :token

      t.timestamps
    end
  end
end
