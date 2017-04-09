gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm-web.sqlite3' )


class Contact

  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :note

  @@contacts = []
  @@next_id = 1
  def self.all
    @@contacts
  end

  def self.delete_all
    @@contacts.clear
  end

  def self.delete(attribute, value)
    if attribute == "first name"
      @@contacts.each do |contact|
        if contact.first_name == value
          @@contacts.delete(contact)
        end
      end
  end
  if attribute == "last name"
    @@contacts.each do |contact|
      if contact.last_name == value
        @@contacts.delete(contact)
      end
    end
  end
  if attribute == "email"
    @@contacts.each do |contact|
      if contact.email == value
        @@contact.delete(contact)
      end
    end
  end
  if attribute == "note"
    @@ontacts.each do |contact|
      if contact.note == value
        @@contact.delete(contact)
      end
    end
  end

end

  def self.create(first_name, last_name, email, note)
    new_contact = self.new(first_name, last_name, email, note)

    @@contacts << new_contact
    return new_contact

  end

  def self.find(contact_id)
    @@contacts.each do |contact|
    if contact.id == contact_id
       return contact
    end
  end
end

def self.find_by(attribute, value)
  if attribute == "first name"
    @@contacts.each do |contact|
      if contact.first_name == value
        return contact
      end
    end
  end
  if attribute == "last name"
        @@contacts.each do |contact|
          if contact.last_name == value
            return contact
          end
        end
      end
  if attribute == "email"
        @@contacts.each do |contact|
        if contact.email == value
          return contact
        end
      end
    end
    if attribute == "note"
      @@contacts.each do |contact|
      if contact.note == value
        return contact
      end
    end
  end

end

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note

    @id = @@next_id
    @@next_id += 1

  end




  def full_name
    "#{@first_name} #{@last_name}"
  end

  def update(attribute, new_val)
    case attribute
    when "first name"
      @first_name = new_val
    when "last_name"
      @last_name = new_val
    when "email"
      @email = new_val
    when "note"
      @note = new_val

    end
  end
end









# end
