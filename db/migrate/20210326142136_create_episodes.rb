class CreateEpisodes < ActiveRecord::Migration[6.1]
  def change
    create_table :episodes do |t|
      t.belongs_to :patient
      t.date :date, :null => false
      t.integer :age, :null => false
      t.integer :blood_pressure, :null => false
      t.float :glucose, :null => false
      t.boolean :diabetes, :null => false
      t.integer :wcc, :null => false
      t.timestamps
    end
    add_index :episodes, [:patient_id, :date], unique: true
  end
end
