class SummariesController < ApplicationController
  before_action :set_summary, only: [:show, :edit, :update, :destroy]
  include SkipAuthorization
  skip_before_action :authenticate_user!

  # GET /summaries
  # GET /summaries.json
  def index
    @summaries = Summary.where(parent_id: nil).order(number: :asc)
  end

  # GET /summaries/1
  # GET /summaries/1.json
  def show
    @updates = Summary.where(number: @summary.number)
  end

  # GET /summaries/new
  def new
    @summary = Summary.new
  end

  # GET /summaries/1/edit
  def edit
  end

  # POST /summaries
  # POST /summaries.json
  def create
    @summary = Summary.new(summary_params)

    respond_to do |format|
      if @summary.save
        format.html { redirect_to @summary }
        format.json { render :show, status: :created, location: @summary }
      else
        format.html { render :new }
        format.json { render json: @summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /summaries/1
  # PATCH/PUT /summaries/1.json
  def update
    respond_to do |format|
      if @summary.update(summary_params)
        format.html { redirect_to @summary }
        format.json { render :show, status: :ok, location: @summary }
      else
        format.html { render :edit }
        format.json { render json: @summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /summaries/1
  # DELETE /summaries/1.json
  def destroy
    @summary.destroy
    respond_to do |format|
      format.html { redirect_to summaries_url }
      format.json { head :no_content }
    end
  end

  def duplicate
    @summary = Summary.find(params[:id])
    @new_summary = @summary.duplicate
    redirect_to summaries_path
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_summary
      @summary = Summary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def summary_params
      params.require(:summary).permit(:name, :number, :ic, :management_organization, :start_date, 
                                      :size, :percent_complete, :incident_type, :cause, :suppression_strategy, 
                                      :complexity, :report_date, :prepared_by, :approved_by, :primary_agency, 
                                      :state, :county, :city, :jurisdiction, :ownership, :latitude, :longitude, 
                                      :area_description, :fire_behavior, :narrative, :fuel_type, :damage_assessment, 
                                      :injuries, :threat_remark, :weather, :projected_spread_12, :projected_spread_24, 
                                      :projected_spread_48, :projected_spread_72, :projected_spread_after, :stragetic_objectives, 
                                      :threat_12, :threat_24, :threat_48, :threat_72, :threat_after, :critical_needs_12, 
                                      :critical_needs_24, :critical_needs_48, :critical_needs_72, :critical_needs_after, 
                                      :strategic_discussion, :tomorrows_plan, :anticipated_completion, :cost, :remarks, 
                                      :resources, :cooperators, :date, :parent_id)
    end
end
