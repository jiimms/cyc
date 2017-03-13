class StoriesController < ApplicationController
  # before_action :set_stories, only: [:index, :new, :show, :edit, :update, :delete]
  before_action :set_recepient, only: [:index, :new,:create, :show, :destroy]

  before_action :set_story, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:stories]

  def stories
    @stories = Story.all
    
  end
  def index
    @stories = @recepient.stories
  end

  def show
  end

  def new
    # @story = 
    @story = @recepient.stories.build

  end

  def edit
  end

  def create
    @story = @recepient.stories.build(story_params)

    if @story.save
      redirect_to(recepient_stories_url, notice: 'Story was successfully created.')
    else
      render action: 'new'
    end
  end

  def update
    if @story.update_attributes(story_params)
      redirect_to([@story.recepient, @story], notice: 'Story was successfully updated.')
    else
      render action: 'edit'
    end
  end

  def destroy
    @story.destroy

    redirect_to recepient_stories_url(@recepient)
  end

  private
    def set_recepient
      @recepient = Recepient.where(user_id: current_user.id)[0]
    end

    def set_story
      @story = @recepient.stories.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_params
      params.require(:story).permit(:title, :body, :category, :avatar)
    end
end
