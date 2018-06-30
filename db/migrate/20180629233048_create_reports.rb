class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :description
      t.references :report_category, foreign_key: true
      t.string :location
      t.string :landmark

      t.timestamps
    end
  end
end
