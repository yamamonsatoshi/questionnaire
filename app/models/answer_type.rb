# == Schema Information
#
# Table name: answer_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pattern    :string
#  reverse    :integer
#  content    :text
#

class AnswerType < ActiveRecord::Base
  has_many :questions

  # 選択式の問題に対して、回答を提示する
  # yes/no
  # 3択の選択肢
  # 5択の選択肢

end
