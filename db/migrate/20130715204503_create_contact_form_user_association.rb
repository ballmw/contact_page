class CreateContactFormUserAssociation < ActiveRecord::Migration
  def up
    change_table :contact_forms do |t|
      t.references :user
    end
  end
end
