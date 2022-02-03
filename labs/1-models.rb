# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

apple = Company.where({name: "Apple"})[0]
# puts apple.id
amazon = Company.where({name: "Amazon"})[0]
tesla = Company.where({name: "Tesla"})[0]

# 2. create 1-2 new contacts for each company (they can be made up)

contact = Contact.new
contact.first_name = "Maria"
contact.last_name = "Ehritt"
contact.email = "e.m@gmail.com"
contact.phone_number = "6123608930"
contact.company_id = apple.id
contact.save

contact = Contact.new
contact.first_name = "Mary"
contact.last_name = "Jane"
contact.email = "m.j@gmail.com"
contact.phone_number = "6123608931"
contact.company_id = amazon.id
contact.save

# puts contact.inspect
# puts Contact.all.count


# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# puts "Contacts: #{Contact.all.count}"
# puts "#{contact.read_attribute(:first_name)} #{contact.read_attribute(:last_name)}  - #{contact.read_attribute(:email)} "

# puts Contact.all.inspect


# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

puts "Contacts: #{Contact.all.count}"
contacts = Contact.all
for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end
