# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


AnswerType.find_or_create_by(name: "3-choice-like",  content: '{1=>"嫌い", 2=>"どちらでもない", 3=>"好き"}')
AnswerType.find_or_create_by(name: "5-choice-like",  content: '{1=>"とても嫌い", 2=>"嫌い", 3=>"どちらでもない", 4=>"好き", 5=>"とても好き"}')
AnswerType.find_or_create_by(name: "3-choice-think", content: '{1=>"そう思わない", 2=>"どちらとも言えない", 3=>"そう思う"}')
AnswerType.find_or_create_by(name: "5-choice-think", content: '{1=>"全くそう思わない", 2=>"そう思わない", 3=>"どちらとも言えない", 4=>"そう思う", 5=>"そう思う"}')
AnswerType.find_or_create_by(name: "yes-no",         content: '{1=>"yes", 2=>"no"}')


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

      # questioとAnswerTypeのrelation
      q.answer_type = AnswerType.all.sample

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

