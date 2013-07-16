class CreateContactFormFields < ActiveRecord::Migration
  def change
    create_table :contact_form_fields do |t|
      t.string :label
      t.string :description
      t.string :name
      t.integer :length
      t.string :input_type
      t.boolean :required

      t.timestamps
    end
  end
end
