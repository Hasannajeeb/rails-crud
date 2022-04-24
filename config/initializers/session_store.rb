if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_rails-crud-heroku', domain: 'https://hasan-rails-crud.herokuapp.com/'
  else
    Rails.application.config.session_store :cookie_store, key: '_rails-crud-heroku'
  end