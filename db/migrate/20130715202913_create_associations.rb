class CreateAssociations < ActiveRecord::Migration
  def up
    change_table :contact_form_fields do |t|
      t.references :contact_form
    end
    
  end
end
