class CreateMixtapes < ActiveRecord::Migration
  def change
    create_table :mixtapes do |t|
      t.string :mixtape_name

      t.timestamps
    end
  end
end
