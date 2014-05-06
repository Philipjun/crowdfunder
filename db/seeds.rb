# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create ({
  title: 'Rainforest',
  description: 'Amazon clone',
  goal: 10000

  })

Breakpoint.create ({
  pledge_title: 'Rainforest prime',
  info: 'Prime shipping',
  pledge: 100
  })