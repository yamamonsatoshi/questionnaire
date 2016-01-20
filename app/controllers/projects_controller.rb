class ProjectsController < ApplicationController

  def answer_survey
    @project = Project.find(params[:id])
    @survey = @project.survey
    @groups = @survey.groups
  end

  def answer_receive
  	user = current_user
  	project_id = params[:project_id]
  	qa_hash    = params[:qa_hash]

  	# answerとUserProjectの関連づけ

  	up = UserProject.find_by(user_id: user.id, project_id: project_id)
  	up.is_complete = true
  	up.save

  	# questionとanswerの関連づけ
  	qa_hash.each do |q_id, a_val|
      # TODO:q reverseのものは逆転して返す
      a = Answer.create(question_id: q_id, user_project_id: up.id, val: a_val)
  	end

    puts user.id
    puts project_id
    puts qa_hash
    redirect_to :back
  end



# このvaleuをAnswerモデルにどうにか格納しておく。
# {"utf8"=>"✓", 
# "authenticity_token"=>"qJYZmWe+tYI4Ltd/VFjCeabM8LMVZRx06FYv1mplih4MYgvbFdV3dgOtxBdJS9sH/WpBaqK9NFQHX4h8417Itw==", 
# "value"=>{"answer"=>{"449"=>"3", 
						# "450"=>"2", 
						# "451"=>"2", 
						# "452"=>"2", 
						# "453"=>"5", 
						# "454"=>"3", 
						# "455"=>"5", 
						# "456"=>"3", 
						# "457"=>"2", 
						# "458"=>"3", 
						# "459"=>"2", 
						# "460"=>"2", 
						# "461"=>"5", 
						# "462"=>"3", 
						# "463"=>"3", 
						# "464"=>"2", 
						# "465"=>"3", 
						# "466"=>"5", 
						# "467"=>"3", 
						# "468"=>"3", 
						# "469"=>"5", 
						# "470"=>"3", 
						# "471"=>"5", 
						# "472"=>"5", 
						# "473"=>"3", 
						# "474"=>"3", 
						# "475"=>"2", 
						# "476"=>"2"}}, 
#{}"commit"=>"Save changes", 
# "method"=>"post", 
# "controller"=>"projects", 
# "action"=>"answer_receive"}


end
