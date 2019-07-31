class Summary < ApplicationRecord
  def duplicate
    parent_id = self.id.to_f
    if self.parent_id
      summary = Summary.find(self.parent_id)
      @update = summary.dup
      @update.update_attributes(parent_id: summary.id, fire_behavior: "",narrative:"",weather: "",
                              tomorrows_plan: "",cost: "", date:Date.today, remarks: "" )
    else
      @update = self.dup
      @update.update_attributes(parent_id: parent_id, fire_behavior: "",narrative:"",weather: "",
                              tomorrows_plan: "",cost: "", date:Date.today, remarks: "" )
    end
  end

  def updates
    Summary.where(parent_id: self.id)
  end
end
