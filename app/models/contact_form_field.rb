class ContactFormField < ActiveRecord::Base
  attr_accessible :description, :label, :length, :name, :required, :type, :contact_form_id
  belongs_to :contact_form
end
