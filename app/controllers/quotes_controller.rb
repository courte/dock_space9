class QuotesController < ApplicationController
  def index
    colors = ["#ef946c","#303633","#70877f","#251605","#694873"]
    @color = colors.sample

    sample_size = ENV['QUOTES_PER_PAGE'] || 1
    @quotes = Quote.random_sample(sample_size)
  end
end
