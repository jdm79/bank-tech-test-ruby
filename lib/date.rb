# Creates current date in days, months, years
class Date
  def current_date
    Time.now.strftime('%d/%m/%Y')
  end
end
