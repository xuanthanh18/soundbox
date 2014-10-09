class CreateAudioposts < ActiveRecord::Migration
  def change
    create_table :audioposts do |t|

      t.timestamps
    end
  end
end
