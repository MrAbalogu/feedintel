class CreateAminas < ActiveRecord::Migration[5.0]
  def change
    create_table :aminas do |t|
      t.string :email

      t.timestamps
    end
  end
end
