# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Andreina', last_name: 'Amengual', phone_number: '954-294-4242', email: 'inaamengual@gmail.com', password: '123456')
User.create(first_name: 'Joel', last_name: 'Gamez', phone_number: '954-294-4242', email: 'joelgamez@gmail.com', password: '123456')
User.create(first_name: 'Angel', last_name: 'Melendez', phone_number: '954-294-4242', email: 'angelmelendez@gmail.com', password: '123456')
User.create(first_name: 'Angel', last_name: 'Vanegas', phone_number: '954-294-4242', email: 'angelvanegas@gmail.com', password: '123456')
User.create(first_name: 'Andy', last_name: 'Weis', phone_number: '954-294-4242', email: 'andyweis@gmail.com', password: '123456')
User.create(first_name: 'Sarah', last_name: 'Cohen', phone_number: '954-294-4242', email: 'saracohen@gmail.com', password: '123456')
User.create(first_name: 'Erika', last_name: 'Lorenzo', phone_number: '954-294-4242', email: 'erikalorenzo@gmail.com', password: '123456')
User.create(first_name: 'Mari', last_name: 'Sarria', phone_number: '954-294-4242', email: 'marisarria@gmail.com', password: '123456')
User.create(first_name: 'Dan', last_name: 'Hasan', phone_number: '954-294-4242', email: 'danhasan@gmail.com', password: '123456')
User.create(first_name: 'Gabe', last_name: 'Garcia', phone_number: '954-294-4242', email: 'gabegarcia@gmail.com', password: '123456')

Company.create(company_name: 'Tati\'s Rental', address: '600 SW 45th St.', category: 'Tableware', phone_number: '786-454-0000', service_distance: '100 miles', email: 'tatis@gmail.com', password: '123456')
Company.create(company_name: 'Vince Furniture', address: '611 Mad St.', category: 'Furniture', phone_number: '786-454-0000', service_distance: '50 miles', email: 'vincefurniture@gmail.com', password: '123456')
Company.create(company_name: 'South Florida Event Services', address: '350 S Miami Ave', category: 'Service', phone_number: '786-454-0000', service_distance: '30 miles', email: 'southfloridaeventservices@gmail.com', password: '123456')
Company.create(company_name: 'Ernie Stages', address: '612 97th Ave', category: 'Production', phone_number: '786-454-0000', service_distance: '150 miles', email: 'erniestages@gmail.com', password: '123456')
Company.create(company_name: 'Latitude 54', address: '2240 Quail Ave.', category: 'Decoration', phone_number: '786-454-0000', service_distance: '60 miles', email: 'latitude54@gmail.com', password: '123456')
Company.create(company_name: 'Bounce Houses', address: '66 Fun St.', category: 'Kids', phone_number: '786-454-0000', service_distance: '75 miles', email: 'bounce@gmail.com', password: '123456')
Company.create(company_name: 'Fine Tables', address: '66 Luxury Ave.', category: 'Tableware', phone_number: '786-454-0000', service_distance: '60 miles', email: 'finetables@gmail.com', password: '123456')
Company.create(company_name: 'Miami Party Rental', address: '', category: 'Furniture', phone_number: '786-454-0000', service_distance: '45 miles', email: 'miamipartyfurniture@gmail.com', password: '123456')
Company.create(company_name: 'Miami Waiters', address: '528 Brickell Ave.', category: 'Service', phone_number: '786-454-0000', service_distance: '50 miles', email: 'miamiwaiters@gmail.com', password: '123456')
Company.create(company_name: 'Event Lighters', address: '46 Biscayne Blvd.', category: 'Production', phone_number: '786-454-0000', service_distance: '70 miles', email: 'eventlighters@gmail.com', password: '123456')
Company.create(company_name: 'Nina Events', address: '611 NE Miami St.', category: 'Decoration', phone_number: '786-454-0000', service_distance: '20 miles', email: 'ninaevents@gmail.com', password: '123456')
Company.create(company_name: 'Gal G', address: '9 Fun St.', category: 'Kids', phone_number: '786-454-0000', service_distance: '45 miles', email: 'galg@gmail.com', password: '123456')
Company.create(company_name: 'Twin Tables', address: '107 Crazy St.', category: 'Tableware', phone_number: '786-454-0000', service_distance: '50 miles', email: 'twintables@gmail.com', password: '123456')
Company.create(company_name: 'Marty Party', address: '5 Oct Ave.', category: 'Service', phone_number: '786-454-0000', service_distance: '25 miles', email: 'martyparty@gmail.com', password: '123456')
Company.create(company_name: 'Top Tal', address: '33 Talent Ave.', category: 'Production', phone_number: '786-454-0000', service_distance: '75 miles', email: 'toptal@gmail.com', password: '123456')
Company.create(company_name: 'Outshine Events', address: '88 Shining St.', category: 'Decoration', phone_number: '786-454-0000', service_distance: '40 miles', email: 'outshineevents@gmail.com', password: '123456')
Company.create(company_name: 'Kiddy Fun', address: '22 Kids St.', category: 'Kids', phone_number: '786-454-0000', service_distance: '15 miles', email: 'kiddyfun@gmail.com', password: '123456')
Company.create(company_name: 'Fork and More', address: '55 Eat Ave.', category: 'Tableware', phone_number: '786-454-0000', service_distance: '30 miles', email: 'forksandmore@gmail.com', password: '123456')
Company.create(company_name: 'Sit Anywhere', address: '43 Sitting St.', category: 'Furniture', phone_number: '786-454-0000', service_distance: '60 miles', email: 'sitanywhere@gmail.com', password: '123456')
Company.create(company_name: 'Top Party Services', address: '99 Top Blvd.', category: 'Service', phone_number: '786-454-0000', service_distance: '90 miles', email: 'toppartyservices@gmail.com', password: '123456')
Company.create(company_name: 'Miami Tents', address: '350 S Miami Ave.', category: 'Production', phone_number: '786-454-0000', service_distance: '50 miles', email: 'miamitents@gmail.com', password: '123456')
Company.create(company_name: 'Decorate Galore', address: '22 Decoration St.', category: 'Decoration', phone_number: '786-454-0000', service_distance: '30 miles', email: 'decorategalore@gmail.com', password: '123456')
Company.create(company_name: 'Mimi\'s Parties', address: '67 Fun St.', category: 'Kids', phone_number: '786-454-0000', service_distance: '20 miles', email: 'mimisparties@gmail.com', password: '123456')


Company.find(2).inventory_items.create(name: 'Blue Panther Chair', category: 'Furniture', subcategory: 'Arm Chair', price: '350', quantity: '6', description: 'Beautiful arm chair to set the mood in your party')
