# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'
# set :static, true


db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students ORDER BY campus, name")
  erb :home #same as erb(:home) -- erb is a method
end         #dropping parenthesese is a web convetion

get '/students/new' do
  erb :new_student
end

get '/students/delete' do
  erb :delete_student
end

# create or delete a student via
# a form
post '/students' do
  if params.has_key?('campus')
    db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
    redirect '/'
  else
    db.execute("DELETE FROM students WHERE name=? ", [params['name']])
    redirect '/'
  end
end