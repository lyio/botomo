# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.destroy_all

books = [{
	"title": "The Hunger Games",
	"subtitle": "The Hunger Games, #1",
	"author": "Suzanne Collins",
	"year":"2008",
	"up_votes": 4,
	"down_votes": 36
},
{

	"title": "Harry Potter and the Sorcerer's Stone",
	"subtitle": "Harry Potter, #1",
	"author": "J.K. Rowling",
	"year":"1997",
	"up_votes": 2222,
	"down_votes": 122
},
{

	"title": "Harry Potter and the Chamber of Secrets",
	"subtitle": "Harry Potter, #2",
	"author": "J.K. Rowling",
	"year":"1998",
	"up_votes": 12,
	"down_votes": 12
},
{

	"title": "Harry Potter and the Prisoner of Azkaban",
	"subtitle": "Harry Potter, #3",
	"author": "J.K. Rowling",
	"year":"1999",
	"up_votes": 2,
	"down_votes": 2122
},
{

	"title": "Harry Potter and the Half-Blood Prince",
	"subtitle": "Harry Potter, #6",
	"author": "J.K. Rowling",
	"year":"2005",
	"up_votes": 123652,
	"down_votes": 2122
},
{

	"title": "Twilight",
	"subtitle": "Twilight, #1",
	"author": "Stephenie Meyer",
	"year":"2005",
	"up_votes": 326,
	"down_votes": 162
},
{

	"title": "The Fault in Our Stars",
	"subtitle": "",
	"author": "John Green",
	"year":"2012",
	"up_votes": 326,
	"down_votes": 313
},
{

	"title": "The Persecution and Assassination of Jean-Paul Marat as Performed by the Inmates of the Asylum of Charenton Under the Direction of the Marquis de Sade",
	"subtitle": "",
	"author": " Peter Weiss, Geoffrey Skelton",
	"year":"2001",
	"up_votes": 6,
	"down_votes": 1
}]

Book.create!(books)
