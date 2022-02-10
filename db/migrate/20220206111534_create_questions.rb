class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :description
      t.text :level

      t.timestamps
    end
  end
end
