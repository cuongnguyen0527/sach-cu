module ApplicationHelper
  def money(number)
    number_to_currency number,
                       precision: 0,
                       unit: '₫',
                       delimiter: '.',
                       format: "%n%u"
  end
end
