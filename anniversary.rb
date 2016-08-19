#Class to create tasks for anniversary dates
class Anniversary
  def initialize
    @done = false
    @anniversary_hash = Hash.new
  end

  def title(title)
    @title = title
  end

  def take_title
    @title
  end

  def anniversary(date)
    @anniversary = Date._strptime(date, '%m/%d')
  end

  def take_anniversary_date
    @anniversary
  end

  def take_anniversary_month
    @anniversary[:mon]
  end

  def date_labels_and_values(set_label,set_value)
    @anniversary_hash[set_label] = set_value
    print @anniversary.to_s + ' ' + @anniversary_hash.to_s
    @anniversary.to_s + ' ' + @anniversary_hash.to_s
  end

  def finished(answer)
    if answer == 'yes'
      @done = true
    else
      @done = false
    end
  end

  def done
    @done
  end

  def show
    if @done == true
      print @title.to_s + ' complete'
      @title.to_s + ' complete'
    else
      print @title.to_s + '
     incomplete'
     @title.to_s + ' complete'
    end
  end
end
