class GoalsController < ApplicationController
  def new
    @goal = Goal.new

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @goal }
    end
  end

  def create
    @goal = Goal.new(params[:goal])

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

  def index
    @goals = Goal.all

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @goals }
    end
  end

  def show
    @goal = Goal.find(params[:id])

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @goals }
    end
  end
end