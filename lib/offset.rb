class Offset
  def initialize
  end

  def create_offset(date)
    hash_keys = %i[A B C D]
    numeric_form = date ** 2
    last_four_numbers = numeric_form.to_s.chars.last(4)
    digits = last_four_numbers.map do |num|
      num.to_i
    end

    offsets =  hash_keys.zip(digits).to_h
  end

  def generate_date
    Time.now.strftime("%m%d%y").to_i
  end
end
