class ChangeFiguresCorrectTableName < ActiveRecord::Migration[5.1]
  def change
  	rename_table :name, :figures
  end
end
