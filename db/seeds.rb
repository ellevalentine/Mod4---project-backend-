# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all
Charity.destroy_all

# user1 = User.create(username: "Elle", password: "123456", balance: 1000)
# user2 =User.create(username: "Leah", password: "123456", balance: 1000)
# user3 =User.create(username: "Ranya", password: "123456", balance: 1000)
# user4 =User.create(username: "Tom", password: "123456", balance: 1000)
# user5 =User.create(username: "Ben", password: "123456", balance: 1000)
# user5 =User.create(username: "Ines", password: "ines", balance: 1000)

# Item.create(name: 'Postion', description: 'lalalal', user_id: user1.id )
# Item.create(name: 'HEllo', description: 'heheh', user_id: user2.id )

refugee = Charity.create(name: "Everyone is welcome", description: "We are a charity based in London that helps asylum seekers apply for refugee status and, in parallel, help refugees settle in the UK.", address: "East London", website:"www.everyonewelcome.org.uk", logo: "./everyones-welcome.png", balance: 0)

lgbt = Charity.create(name: "Inclusive Rights", description:"We're an LGBTQ+ focused charity that provides advice and services for the community. Our strong presence helps us advocate for more inclusive laws and fight discriminatory practices.", address: "Camden, London", website:"www.inclusiverights.org.uk", logo: "./inclusive-rights.png", balance: 0)

thefreedomproject = Charity.create(name: "The Freedom Project", description:"The freedom project has been helping victims of domestic violence and trafficking since 1982. By providing shelters, education, advice and legal services, we help women leave their abusive relationships and begin a new life", address: "Elephant and Castle, London", website:"www.thefreedomproject.org.uk", logo: "./the-freedom-project.png", balance: 0)


