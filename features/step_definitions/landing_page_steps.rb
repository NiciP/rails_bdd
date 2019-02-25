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

When("I fill in {string} with {string}") do |field, input|
#  fill_in field, with :input
end

When("I click {string} button") do |button|
  click_link button
end

Then("I should be on {string} page") do |article_page|
  visit article_page
end

Given("I am reading the article titled {string}") do |title|
  @article = Article.find_by(title: title)
end

Given("I fill in a {string} with {string}") do |element, value|
  within("#article_#{@article.id}") do
  fill_in element, with: value
  end
end

Given("I click {string}") do |element_text|
  within("#article_#{@article.id}") do
  click_on element_text
  end
end




