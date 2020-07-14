class UserSearch
  
  attr_accessor :search_name, :search_age

  def initialize(user_data)
    @search_name = user_data[:search_name]
    @search_age = user_data[:search_age]
  end

  def execute
    User.ransack(name_eq: @search_name, age_eq: @search_age).result
  end
end