module FortunesHelper

  def is_number? string
    true if Float(string) rescue false
  end

  def get_fortune(param)
    if is_number? param
      Fortune.find(param)
    elsif param == "random"
      Fortune.offset(rand(Fortune.count)).first
    else
      nil
    end
  end
end
