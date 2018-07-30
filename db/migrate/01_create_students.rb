
require 'pry'
class CreateStudents < ActiveRecord::Migration[5.1]
  def change

    # create_table(:students) do |t|
    #   t.string :name,
    # Other fields here

    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT
      );
      SQL

      DB.execute(sql)

  end
end
