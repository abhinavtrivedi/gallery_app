class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.string :title
      t.string :size
      t.string :about

      t.timestamps
    end
  end
end
