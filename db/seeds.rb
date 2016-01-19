# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |i|
  pjt = Project.find_or_create_by(id: i, name: "#{i}番目の質問プロジェクト")
  s = Survey.find_or_create_by(id: i, name: "#{i}番目のSurvey")
  pjt.survey = s
  pjt.save
end

Survey.all.each do |s|
  4.times do |j|
    g = Group.find_or_create_by(name: "Survey#{s.id}の#{j}番のGroup")

    7.times do |k|
      q = Question.find_or_create_by(name: "Group#{g.id}の#{k}番目のQuestion")
      g.questions << q
    end
    g.save
    s.groups << g
  end
  s.save
end

User.all.each do |u|
    u.projects << Project.all.sample(7)
end

UserProject.all.each do |up|
    up.due_date = "2016-01-20"
    up.is_complete = [true, false].sample
    up.save
end


