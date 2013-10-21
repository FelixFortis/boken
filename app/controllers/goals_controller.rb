class GoalsController < ApplicationController
  before_save :authenticate_user!
  # GET /shows
  # GET /shows.json
  def index
    @goals = Goal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @goals }
    end
  end

  # GET /shows/1
  # GET /shows/1.json
  def show
    @goal = Goal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @goal }
    end
  end

  # GET /shows/new
  # GET /shows/new.json
  def new
    @goal = Goal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @goal }
    end
  end

  # GET /shows/1/edit
  def edit
    @goal = Goal.find(params[:id])
  end

  # POST /shows
  # POST /shows.json
  def create
    @goal = Goal.new(params[:show])

    respond_to do |format|
      if @goal.save
        format.html { redirect_to @goal, notice: 'Goal was successfully created.' }
        format.json { render json: @goal, status: :created, location: @goal }
      else
        format.html { render action: "new" }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shows/1
  # PUT /shows/1.json
  def update
    @goal = Goal.find(params[:id])

    respond_to do |format|
      if @goal.update_attributes(params[:show])
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shows/1
  # DELETE /shows/1.json
  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy

    respond_to do |format|
      format.html { redirect_to shows_url }
      format.json { head :no_content }
    end
  end
end
