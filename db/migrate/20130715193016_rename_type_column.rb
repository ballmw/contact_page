class RenameTypeColumn < ActiveRecord::Migration
  def up
    rename_column :contact_form_fields, :type, :input_type
  end

  def down
  end
end
