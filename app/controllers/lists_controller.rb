class ListsController < ApplicationController

  def new
    @user = User.find(params[:id])
    @list = List.new
  end

  def create
    @user = current_user
    @list = @user.lists.build(params[:list])
    # @list.user_id = current_user.id

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'Welcome! Now add some goals!' }
        format.json { render json: @list, status: :created, location: @list }
      end
    end
  end

  def show
    @user = current_user
    @list = current_user.list

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list }
    end
  end

  # GET /users/:user_id/lists/:id/edit
  def edit
    #1st you retrieve the user thanks to params[:user_id]
    @user = User.find(params[:user_id])
    #2nd you retrieve the list thanks to params[:id]
    @list = @user.lists.find(params[:id])
  end

  # PUT /users/:user_id/lists/:id
  # PUT /users/:user_id/lists/:id.xml
  def update
    #1st you retrieve the user thanks to params[:user_id]
    @user = User.find(params[:user_id])
    #2nd you retrieve the list thanks to params[:id]
    @list = @user.lists.find(params[:id])

    respond_to do |format|
      if @list.update_attributes(params[:list])
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource list
        format.html { redirect_to([@list.user, @list], :notice => 'Comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @list.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @list = @user.lists.find(params[:id])
    @list.destroy
  end
end