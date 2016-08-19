class Task
  def initialize
    @done = false
    @hash_list = Hash.new
  end

  def title(titles)
    @title = titles
  end

  def take_title
    @title
  end

  def description(describe_goes_here)
    @description = describe_goes_here
  end

  def take_description
    @description
  end

  def labels_and_values(set_label, set_value)
     @hash_list[set_label]=set_value
     print @title.to_s + @hash_list.to_s
  end

  def hash_list
    @hash_list
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

  def input_tasks
    @title
  end
end
