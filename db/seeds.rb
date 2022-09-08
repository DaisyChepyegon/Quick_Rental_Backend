puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating Houses..."
House.create(location: "Roysambu",bedrooms: 2, price: 22000, landload_id:1, description:"safety and security,packing space,outdoor space and low noise")
House.create(location: "fig tree",bedrooms: 1, price: 15000, landload_id:1, description:"safety and security,packing space,outdoor space, updated kitchen and low noise")

puts "Creating Reviews..."
Review.create(name: "daisy", comment: "the house was amaizing", house_id: 1)
Review.create(name: "johnson", comment: "the house was awesome", house_id: 2)

puts "Creating Landloads..."
Landload.create(name: 'Singoei', contact: "0712345678", house_id: 1)
Landload.create(name: 'Happiness', contact: "0798765432", house_id: 2)

puts "✅ Done seeding!"
