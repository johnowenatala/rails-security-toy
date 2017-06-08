class CreateSecureFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :secure_files do |t|
      t.references :owner, foreign_key: true
      t.string :name
      t.string :filename, null: false
      t.string :content_type, null: false
      t.boolean :restricted

      t.timestamps
    end
  end
end
