### utility methods ###


### steps ###

Given(/^the article "(.*?)"$/) do |article|
	@article = Article.new(article, 1.0, 10)
end

Given(/^the article exists (\d+) times$/) do |stock|
  @article.stock = stock
end

When(/^the shop sells (\d+)$/) do |amount|
  shop = Shop.new
  shop.sell(amount, @article)
end

Then(/^the stock should be (\d+)$/) do |stock|
  @article.stock.should eq stock
end


