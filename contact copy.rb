gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'contact-rb.sqlite3')

class Contact < ActiveRecord::Base

  # attr_accessor :first_name, :last_name, :email, :note
  field :first_name, as: :text
  field :last_name, as: :text
  field :email, as: :text
  field :note, as: :text    # as: :integer


    # This method should initialize the contact's attributes


end

contact.auto_upgrade!
