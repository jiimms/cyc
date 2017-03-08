class StoriesController < ApplicationController
  # before_action :set_stories, only: [:index, :new, :show, :edit, :update, :delete]
  before_action :set_recepient, only: [:index, :new,:create, :show, :destroy]

  before_action :set_story, only: [:show,:create, :edit, :update, :destroy]

  def index
    @stories = @recepients[3].stories
  end

  def show
  end

  def new
    # @story = 
    @story = @recepients[0].stories.build

  end

  def edit
  end

  def create
    @story = @recepients[0].stories.build(story_params)

    if @story.save
      redirect_to(recepient_stories_url, notice: 'Story was successfully created.')
    else
      render action: 'new'
    end
  end

  def update
    if @story.update_attributes(story_params)
      redirect_to([@story.recepients, @story], notice: 'Story was successfully updated.')
    else
      render action: 'edit'
    end
  end

  def destroy
    @story.destroy

    redirect_to recepient_stories_url(@recepients)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_stories
    #   @user = User.find(params[:recepient_id])
    #   id = @user.recepients[0].id
    #   @recepients = Recepient.find(id)
    #   raise
    # end
    def set_recepient
      @recepients = Recepient.where(user_id: current_user.id)
      
    end

    def set_story
      # if params[:story][:id]

      # @story = @recepients[0].stories

      # else
      @story = @recepients[0].stories.find(params[:id])
      # end
    end

    # Only allow a trusted parameter "white list" through.
    def story_params
      params.require(:story).permit(:title, :body, :category)
    end
end
