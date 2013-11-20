class UserGoalsController < ApplicationController

  def new
    @profile = Profile.find(params[:id])
    @user_goal = UserGoal.new
  end

  def create
    @profile = current_user
    @user_goal = @profile.user_goals.build(params[:user_goal])
    # @user_goal.user_id = current_profile.id

    respond_to do |format|
      if @user_goal.save
        format.html { redirect_to @user_goal, notice: 'Goal successfully created' }
        format.json { render json: @user_goal, status: :created, location: @user_goal }
      end
    end
  end

  def index
    @user_goals = UserGoal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_goals }
    end
  end

  def show
    @profile = Profile.find(params[:id])
    @user_goal = UserGoal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_goal }
    end
  end

  # GET /users/:user_id/user_goals/:id/edit
  def edit
    @user = current_user
    @profile = @user.profile
    @user_goal = @profile.user_goals.find(params[:id])
  end

  # PUT /profiles/:profile_id/user_goals/:id
  # PUT /profiles/:profile_id/user_goals/:id.xml
  def update
    #1st you retrieve the profile thanks to params[:user_id]
    @profile = Profile.find(params[:user_id])
    #2nd you retrieve the user_goal thanks to params[:id]
    @user_goal = @profile.user_goals.find(params[:id])

    respond_to do |format|
      if @user_goal.update_attributes(params[:user_goal])
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource user_goal
        format.html { redirect_to([@user_goal.user, @user_goal], :notice => 'Comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_goal.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile = Profile.find(params[:user_id])
    @user_goal = @profile.user_goals.find(params[:id])
    @user_goal.destroy
  end
  
end
