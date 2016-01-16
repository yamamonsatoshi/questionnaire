class ProjectsController < ApplicationController

    def answer_survey
        @project = Project.find(params[:id])
        @survey = @project.survey
        @groups = @survey.groups
    end
end
