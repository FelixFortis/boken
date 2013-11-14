class GlobalGoalsController < ApplicationController

  after_create build_user_goal

  # GET /global_goals
  # GET /global_goals.json
  def index
    if params[:tag]
      @global_goals  = GlobalGoal.tagged_with(params[:tag])
    else
      @global_goals = GlobalGoal.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @global_goals }
    end
  end

  # GET /global_goals/1
  # GET /global_goals/1.json
  def show
    @global_goal = GlobalGoal.find(params[:id])

    respond_to do |format|
      format.html # global_goal.html.erb
      format.json { render json: @global_goal }
    end
  end

  # GET /global_goals/new
  # GET /global_goals/new.json
  def new
    @global_goal = GlobalGoal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @global_goal }
    end
  end

  # GET /global_goals/1/edit
  def edit
    @global_goal = GlobalGoal.find(params[:id])
  end

  # POST /global_goals
  # POST /global_goals.json
  def create
    @global_goal = GlobalGoal.new(params[:global_goal])

    respond_to do |format|
      if @global_goal.save
        format.html { redirect_to @global_goal, notice: 'Goal was successfully created.' }
        format.json { render json: @global_goal, status: :created, location: @global_goal }
      else
        format.html { render action: "new" }
        format.json { render json: @global_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /global_goals/1
  # PUT /global_goals/1.json
  def update
    @global_goal = GlobalGoal.find(params[:id])

    respond_to do |format|
      if @global_goal.update_attributes(params[:global_goal])
        format.html { redirect_to @global_goal, notice: 'Goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @global_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /global_goals/1
  # DELETE /global_goals/1.json
  def destroy
    @global_goal = GlobalGoal.find(params[:id])
    @global_goal.destroy

    respond_to do |format|
      format.html { redirect_to global_goals_url }
      format.json { head :no_content }
    end
  end

  protected

  def build_user_goal(gg)
    UserGoal.create(global_goal_id: gg.id)
  end
end