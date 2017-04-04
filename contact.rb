class Contact

  @@contacts = []
  @@next_id = 1000
attr_reader :id
 attr_accessor :first_name, :last_name, :email, :note


  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = "N/A"

    @id = @@next_id
    @@next_id += 1

  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
    def self.create(first_name, last_name, email, note)
      new_contact = self.new(first_name, last_name, email, note)

      @@contacts << new_contact
      new_contact
      return new_contact

  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts

end
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(contact_id)
    @@contacts.each do |contact|
    if contact.id == contact_id
       return contact
    end
  end
end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(atribute,value)
    case attribute
    when "first name"
      @first_name = value
    when "last_name"
    @last_name = value
  when "email"
    @email = value
  when "note"
    @note ==  value
  end
end


  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, value)
    if attribute == "first name"
      @@contacts.each do |contact|
        if contact.first_name == value
          return contact
        end
      end
    end
      def self.find_by(attribute,value)
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
            return contactend
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


  # This method should delete all of the contacts
  def self.delete_all
    @@contacts.clear

  end

  def full_name
    "#{@first_name} #{@last_name}"

  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete(attribute, value)
    if attribute == @@contact
      @@contact.each do |contact|
        if contact == value
          @@contacts.delete(contact)
        end
      end
    end

  end

  # Feel free to add other methods here, if you need them.

end
# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
#
# If your implementation of the Contact class is 'right', then you should see that all tests pass!
