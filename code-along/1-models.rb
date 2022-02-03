# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

# puts "There are #{Company.all.count} companies"

# 2. create new companies
# inserting a new row into our table

values = { 
    name: "Apple",
    url: "https://apple.com",
    city: "Cupertino",
    state: "CA"
}
company = Company.new(values)
# write it into the database
company.save

values = { 
    name: "Amazon",
    url: "https://amazon.com",
    city: "Seattle",
    state: "WA"
}
company = Company.new(values)
company.save

# another way to add a new line to the table
company = Company.new
company.write_attribute(:name, "Tesla")
company.write_attribute(:url, "https://tesla.com")
company.write_attribute(:city, "Palo Alto")
company.write_attribute(:state, "CA")
company.save

# yet another way
company = Company.new
company.name = "Facebook"
company.url = "https://facebook.com"
company.city = "Menlo Park"
company.state = "CA"
company.save


# puts "There are #{Company.all.count} companies"

# 3. query companies table

# shows you the resulting array and hashes
# puts Company.all.inspect

# companies = Company.where({ state: "CA" })
# puts companies.inspect

# puts Company.where({ state: "CA", name: "Apple" }).count
apple = Company.where({ state: "CA", name: "Apple" })[0]
# puts apple.inspect

# 4. read column values from row

puts "#{apple.read_attribute(:name)} has a website: #{apple.read_attribute(:url)}"
# another way
# puts "#{apple.name} has a website #{apple.url)}"

# 5. update attribute value

apple.write_attribute(:slogan, "Think Different.")
apple.save
puts apple.inspect

tesler = Company.new({ name: "Tessler"})
tesler.save
# to remove the row
tesler.destroy
