class CreateAudioposts < ActiveRecord::Migration
  def change
    create_table :audioposts do |t|
      t.text :title
      t.string :link

      t.timestamps
    end
  end
end
