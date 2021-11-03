class OpportunitiesController < ApplicationController
  before_action :set_opportunity, except: [:index, :new, :create]

  def index
    @opportunities = Opportunity.includes(:user)
  end

  def new
    @opportunity = Opportunity.new
  end 

  def create
    @opportunity = Opportunity.new(opportunity_params)
    if @opportunity.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @opportunity = Opportunity.find(params[:id])
    @comment = Comment.new
    @comments = @opportunity.comments
  end

  def edit
    @opportunity = Opportunity.find(params[:id])
  end

  def update
    if @opportunity.update(opportunity_params)
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def opportunity_params
    params.require(:opportunity).permit(:title, :bottle_neck, :next_action, :phase_id, :motivation_id).merge(user_id: current_user.id)
  end

  def set_opportunity
    @opportunity = Opportunity.find(params[:id])
  end


end
