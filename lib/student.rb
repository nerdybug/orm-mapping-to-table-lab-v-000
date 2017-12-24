class Student

  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    create_sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER
      );
    SQL
    DB[:conn].execute(create_sql)
  end

  def self.drop_table
    drop_sql = <<-SQL
      DROP TABLE students;
    SQL
    DB[:conn].execute(drop_sql)
  end
  
end
