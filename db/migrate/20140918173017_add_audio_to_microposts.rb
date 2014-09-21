class AddAudioToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :audio, :string
  end
end
