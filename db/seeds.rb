# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["JavaScript", "Ruby", "Java", "PHP", "Python", "C++", "C", "Objective-C", "C#", "Shell", "CSS", "SCSS/SASS", "Perl", "HTML", "VimL", "Scala", "Go", "Prolog", "Clojure", "Haskell", "Lua", "Git"].each do |language|
  Skill.create name: language, icon: "icon-#{language.downcase}"
end
