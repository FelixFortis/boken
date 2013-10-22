class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    @user = User.find(params[:id])
    @list = @user.lists.build(params[:list])

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'Welcome! Now add some goals!' }
        format.json { render json: @list, status: :created, location: @list }
      end
    end
  end

  def show
    @user = User.find(params[:id])
    @list = @user.list

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list }
    end
  end

  def destroy
    @user = User.find(params[:post_id])
    @list = user.lists.find(params[:id])
    @list.destroy
  end
end