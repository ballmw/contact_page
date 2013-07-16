class ContactForm < ActiveRecord::Base
  attr_accessible :description, :enabled, :token, :user_id
  has_many :contact_form_field
  belongs_to :user
end
