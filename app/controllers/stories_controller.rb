class StoriesController < ApplicationController
  before_action :set_stories
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  # GET recepients/1/stories
  def index
    @stories = @recepients.stories
  end

  # GET recepients/1/stories/1
  def show
  end

  # GET recepients/1/stories/new
  def new
    @story = @recepients.stories.build
  end

  # GET recepients/1/stories/1/edit
  def edit
  end

  # POST recepients/1/stories
  def create
    @story = @recepients.stories.build(story_params)

    if @story.save
      redirect_to([@story.recepients, @story], notice: 'Story was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT recepients/1/stories/1
  def update
    if @story.update_attributes(story_params)
      redirect_to([@story.recepients, @story], notice: 'Story was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE recepients/1/stories/1
  def destroy
    @story.destroy

    redirect_to recepients_stories_url(@recepients)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stories
      @user = User.find(params[:recepient_id])
      id = @user.recepients[0].id
      @recepients = Recepient.find(id)
    end

    def set_story
      @story = @recepients.stories.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_params
      params.require(:story).permit(:title, :body, :category)
    end
end
