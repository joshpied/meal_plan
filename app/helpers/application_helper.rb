module ApplicationHelper
  def alert_class(flash_type)
    case flash_type.to_sym
      when :notice
        "alert-success"
      when :alert
        "alert-warning"
      when :error
        "alert-danger"
    end
  end

  def day_of_week(date)
    day = date.wday
    if day == 0
      return "Sunday"
    elsif day == 1
      return "Monday"
    elsif day == 2
      return "Tuesday"
    elsif day == 3
      return "Wednesday"
    elsif day == 4
      return "Thursday"
    elsif day == 5
      return "Friday"
    else
      return "Saturday"
    end
  end
end
