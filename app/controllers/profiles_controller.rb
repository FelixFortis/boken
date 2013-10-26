class ProfilesController < ApplicationController

  def new
    @user = User.find(params[:id])
    @profile = Profile.new
  end

  def create
    @user = current_user
    @profile = @user.profiles.build(params[:profile])
    # @profile.user_id = current_user.id

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Welcome! Now add some goals!' }
        format.json { render json: @profile, status: :created, location: @profile }
      end
    end
  end

  def show
    @user = current_user
    @profile = current_user.profile

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /users/:user_id/profiles/:id/edit
  def edit
    #1st you retrieve the user thanks to params[:user_id]
    @user = User.find(params[:user_id])
    #2nd you retrieve the profile thanks to params[:id]
    @profile = @user.profiles.find(params[:id])
  end

  # PUT /users/:user_id/profiles/:id
  # PUT /users/:user_id/profiles/:id.xml
  def update
    #1st you retrieve the user thanks to params[:user_id]
    @user = User.find(params[:user_id])
    #2nd you retrieve the profile thanks to params[:id]
    @profile = @user.profiles.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource profile
        format.html { redirect_to([@profile.user, @profile], :notice => 'Comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @profile = @user.profiles.find(params[:id])
    @profile.destroy
  end
end