class Key
  def initialize

  end
  def create_shift_keys(key)
    hash_keys = %i[A B C D]
    digit_sets = [key[0..1], key[1..2], key[2..3], key[3..4]]
    values = digit_sets.map do |set|
      set.to_i
    end
    keys = hash_keys.zip(values).to_h
  end

  def generate_key
    
  end
end
