class Summary < ApplicationRecord
  def duplicate
    parent_id = self.id.to_f
    if self.parent_id
      summary = Summary.find(self.parent_id)
      @update = summary.dup
    else
      @update = self.dup
    end
      @update.update_attributes(parent_id: 1, fire_behavior: "",narrative:"",weather: "",
                              tomorrows_plan: "",cost: "", date:Date.today )
  end
end
