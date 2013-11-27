class RenameTypeColumn < ActiveRecord::Migration
  def up
    rename_column :contact_form_fields, :input_type, :input_type
  end

  def down
  end
end
