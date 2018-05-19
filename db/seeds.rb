# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EmailTemplate.create(name: "1st email",
                    subject: "First test subject",
                    body: "<h1> Hello this is first test email </h1>")

EmailTemplate.create(name: "2nd email",
                    subject: "second test subject",
                    body: "<h1> Hello this is second test email </h1>")

EmailTemplate.create(name: "3rd email",
                    subject: "Third test subject",
                    body: "<h1> Hello this is third test email </h1>")
