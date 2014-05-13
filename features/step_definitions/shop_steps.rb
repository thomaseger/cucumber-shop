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
