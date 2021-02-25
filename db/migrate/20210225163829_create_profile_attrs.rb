class CreateProfileAttrs < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_attrs do |t|
      t.string :name
      t.text :about
      t.string :location
      t.string :company
      t.string :education
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
