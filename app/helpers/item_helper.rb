module ItemHelper
  def cents_to_dollars(cents)
    cents.divmod(100).insert(-2,'.').join
  end
end