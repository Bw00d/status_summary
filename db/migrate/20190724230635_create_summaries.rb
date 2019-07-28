  class CreateSummaries < ActiveRecord::Migration[5.1]
  def change
    create_table :summaries do |t|
      t.string  :name
      t.string  :number
      t.string  :ic
      t.string  :management_organization
      t.datetime :start_date
      t.string  :size
      t.string  :percent_complete
      t.string  :incident_type
      t.string  :cause
      t.string  :suppression_strategy
      t.string  :complexity
      t.date    :date
      t.string  :prepared_by
      t.string  :approved_by
      t.string  :primary_agency
      t.string  :state
      t.string  :county
      t.string  :city
      t.string  :jurisdiction
      t.string  :ownership
      t.decimal :latitude, {:precision=>10, :scale=>6}
      t.decimal :longitude, {:precision=>10, :scale=>6}
      t.string  :area_description
      t.text  :fire_behavior
      t.text  :narrative
      t.text  :fuel_type
      t.text  :damage_assessment
      t.string :injuries
      t.text  :threat_remark
      t.text  :weather
      t.text  :projected_spread_12
      t.text  :projected_spread_24
      t.text  :projected_spread_48
      t.text  :projected_spread_72
      t.text  :projected_spread_after
      t.text  :stragetic_objectives
      t.text  :threat_12
      t.text  :threat_24
      t.text  :threat_48
      t.text  :threat_72
      t.text  :threat_after
      t.text  :critical_needs_12
      t.text  :critical_needs_24
      t.text  :critical_needs_48
      t.text  :critical_needs_72
      t.text  :critical_needs_after
      t.text  :strategic_discussion
      t.text  :tomorrows_plan
      t.date  :anticipated_completion
      t.decimal :cost
      t.text  :remarks
      t.text  :resources
      t.text  :cooperators

      t.timestamps
    end
  end
end
