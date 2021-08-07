class Key
  def create_keys(rand_num)
    hash_keys = %i[A B C D]
    digit_sets = [rand_num[0..1], rand_num[1..2], rand_num[2..3], rand_num[3..4]]
    values = digit_sets.map do |set|
      set.join.to_i
    end
    keys = hash_keys.zip(values).to_h
    # require "pry"; binding.pry
  end
end
