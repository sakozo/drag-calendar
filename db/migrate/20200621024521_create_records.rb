class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      #TODO:ユーザー機能未作成
      #t.references :user,       null: false, foreign_key: true
      t.date :date
      t.integer :type
      t.integer :time
      t.timestamps
    end
  end
end
