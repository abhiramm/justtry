class AddLocationToWhiteLabels < ActiveRecord::Migration
  def change
    add_reference :white_labels, :location, index: true
  end
end
