class Round
  def self.nears_05(num)
    if num.class == Float
      rounded = num.ceil(2)
      int_num = rounded.to_s.split(".")[0] 
      digits = rounded.to_s.split(".")[1].chars
      last_d = digits[1].to_i
      
      
      if (1..4) === last_d
        digits[1] = '5'
        "#{int_num}.#{digits.join}".to_f
      else
        "#{int_num}.#{digits.join}".to_f
      end
    elsif num.class == Integer
      num
    end
  end
end