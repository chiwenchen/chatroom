class CreateServiceTubeUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :service_tube_users do |t|
      t.references :service_tube, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
