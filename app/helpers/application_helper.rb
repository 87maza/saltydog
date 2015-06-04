module ApplicationHelper
  def distance_of_time_in_ish(start, finish)
    x=distance_of_time_in_words(start, finish)
    str = x.gsub("about", "")
    str = str + "ish"
  end

end
