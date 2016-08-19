class DueDate
  def initialize
    @done = false
    @event = Hash.new
  end

  def title(title)
    @title = title
  end

  def take_title
    @title
  end

  def due_date(date_due)
    @due_date = Date.parse(date_due)
  end

  def take_due_date
    @due_date
  end

  def date_labels_and_values(set_label, set_value)
    @event[set_label]=set_value
    print @due_date.to_s + ' ' + @event.to_s
    @due_date.to_s + ' ' + @event.to_s
  end

  def take_hash
    @due_date.to_s + ' ' + @event.to_s
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
