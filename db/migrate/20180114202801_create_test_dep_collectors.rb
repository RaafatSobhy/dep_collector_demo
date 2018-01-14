class CreateTestDepCollectors < ActiveRecord::Migration[5.1]
  def change
    create_table :test_dep_collectors do |t|
      t.string :deb
      t.string :os_name

      t.timestamps
    end
  end
end
