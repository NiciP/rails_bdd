When("I visit the site") do
  visit root_path
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

Given("I visit the {string} page") do |string|
  visit articles_index_path
end



