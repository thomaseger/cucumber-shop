### utility methods ###


### steps ###

Given(/^the article "(.*?)" exists (\d+) times$/) do |article, stock|
  @article = Article.new(article, 1.0, stock.to_i)
end

When(/^the shop buys (\d+)$/) do |amount|
  shop = Shop.new
  shop.buy(amount.to_i, @article)
end

When(/^the shop sells (\d+)$/) do |amount|
  shop = Shop.new
  @sold = shop.sell(amount.to_i, @article)
end

Then(/^the stock should be (\d+)$/) do |stock|
  @article.stock.should eq stock.to_i
end

Then(/^I should get a negative feedback$/) do
  @sold.should be false
end


Given(/^I am logged in$/) do
  create_user_and_log_in()
end

Given(/^(\d+) "(.*?)" is in the basket$/) do |amount, article|
  @articles = create_articles_in_basket(amount, article)
end

When(/^I access the basket$/) do
  @page = visit("/basket")
end

Then(/^I should see the price for (\d+) "(.*?)"$/) do |amount, article|
  article = @articles.find(article)
  price = amount * article.price
  @page.source.should_contain(price)
end
