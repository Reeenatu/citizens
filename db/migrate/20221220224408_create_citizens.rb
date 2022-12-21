class CreateCitizens < ActiveRecord::Migration[6.1]
  def change
    create_table :citizens do |t|
      t.string :name
      t.string :document_identifier
      t.string :cns
      t.string :email
      t.datetime :birth_date

      t.timestamps
    end
  end
end
