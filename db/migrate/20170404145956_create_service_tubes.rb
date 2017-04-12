class CreateServiceTubes < ActiveRecord::Migration[5.0]
  def change
    create_table :service_tubes do |t|
      t.string :name

      t.timestamps
    end
  end
end
