Rails.application.routes.draw do
  get '/students', to: 'students#index'

  # http 'path',   to: 'controller#method'
  get '/students/:id', to: 'students#show'

  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
end
