# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Character.destroy_all


#Users Seeds
megan = User.create(name: "Megan")
cici = User.create(name: "CiCi")

#Stat Set Seeds
Stat.create(agility: 11, charisma: 14, dexterity: 10, intelligence: 15, strength: 17, wisdom: 13)

#Race Seeds
human = Race.create(name: "Human")
dwarf = Race.create(name: "Dwarf")
tiefling = Race.create(name: "Tiefling")
elf = Race.create(name: "Elf")
orc = Race.create(name: "Orc")
halfling = Race.create(name: "Halfling")

#Class seeds
cleric = Class.create(name: "Cleric")
Class.create(name: "Bard")
Class.create(name: "Barbarian")
Class.create(name: "Paladin")
Class.create(name: "Rogue")
Class.create(name: "Wizard")
Class.create(name: "Warlock")
Class.create(name: "Druid")
Class.create(name: "Warrior")

#Character Seeds
Character.create(name: "Freyja Rubymaul", image: "./ck-frontend/assets/images/freyjarm.jpg", history: "Wisdom is knowing that tomato is not a fruit", level: 5, user: megan, stat_id: 0, race_id: 1, dndclass_id: 4, achievement_id: 0)
