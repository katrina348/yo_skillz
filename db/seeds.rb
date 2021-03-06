# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ruby = Skill.create(name:'Ruby')
js = Skill.create(name:'JS')
rails = Skill.create(name:'rails')
hw1 = Skill.create(name:'homework1')
hw2 = Skill.create(name:'homework2')


john = User.create(name:'john')
jim = User.create(name:'jim')
jen = User.create(name:'jen')

# with grade class
Grade.create(user_id: john.id, skill_id: hw1.id, score:9)

john.grades.create(skill_id: hw2.id, score:8)

ruby.grades.create(user_id: jim.id, score:8)
rails.grades.create(user_id: jim.id, score:9)
rails.grades.create(user_id: john.id, score:7)
js.grades.create(skill_id: jen.id, score:9)
