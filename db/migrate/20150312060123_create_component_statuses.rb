class CreateComponentStatuses < ActiveRecord::Migration
  def change
    create_table :component_statuses do |t|
      t.string :name
      t.text :description
      t.string :color

      t.timestamps null: false
    end
  end
end
