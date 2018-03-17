# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Referee.destroy_all

referee_list = [
 [3, "Nick Buchert"],
 [4, "Sean Wright"],
 [5, "Kane Fitzgerald"],
 [6, "Tony Brown"],
 [7, "Lauren Holtkamp"],
 [8, "Marc Davis"],
 [9, "Derrick Stafford"],
[10, "Ron Garretson"],
[11, "Derrick Collins"],
[12, "CJ Washington"],
[13, "Monty McCutchen"],
[14, "Ed Malloy"],
[15, "Zach Zarba"],
[16, "David Guthrie"],
[17, "Jonathan Sterling"],
[18, "Matt Boland"],
[19, "James Capers"],
[20, "Leroy Richardson"],
[21, "Dedric Taylor"],
[22, "Bill Spooner"],
[23, "Jason Phillips"],
[24, "Mike Callahan"],
[25, "Tony Brothers"],
[26, "Pat Fraher"],
[27, "Mitchell Ervin"],
[28, "Kevin Scott"],
[29, "Mark Lindsay"],
[30, "John Goble"],
[31, "Scott Wall"],
[32, "Marat Kogut"],
[33, "Sean Corbin"],
[34, "Kevin Cutler"],
[35, "Jason Goldenberg"],
[36, "Brent Barnaky"],
[37, "Eric Dalen"],
[38, "Michael Smith"],
[39, "Tyler Ford"],
[40, "Leon Wood"],
[41, "Ken Mauer"],
[42, "Eric Lewis"],
[44, "Brett Nansel"],
[45, "Brian Forte"],
[46, "Ben Taylor"],
[47, "Bennie Adams"],
[48, "Scott Foster"],
[49, "Tom Washington"],
[50, "Gediminas Petraitis"],
[51, "Aaron Smith"],
[52, "Scott Twardoski"],
[54, "Ray Acosta"],
[55, "Bill Kennedy"],
[56, "Mark Ayotte"],
[58, "Josh Tiven"],
[59, "Gary Zielinski"],
[60, "James Williams"],
[61, "Courtney Kirkland"],
[62, "JB DeRosa"],
[63, "Derek Richardson"],
[64, "Justin Van Duyne"],
[66, "Haywoode Workman"],
[68, "Jacyn Goble"],
[71, "Rodney Mott"],
[72, "J.T. Orr"],
[73, "Tre Maddox"],
[74, "Curtis Blair"],
[77, "Karl Lane"],
]

referee_list.each do |number, name|
  Referee.create(number: number, name: name)
end

puts 'database has been seeded'