module MicrowaveKeyPressEfficiency
  class Calculator
    KEYPAD = {
      1 => [1, 2, 3],
      2 => [4, 5, 6],
      3 => [7, 8, 9],
      4 => [nil, 0, :cook]
    }

    def keys_to_press(time)
      time_as_entered = time.to_s.split("").map(&:to_i)

      time_converted = []
      divided_time = time.divmod(60)
      if divided_time[1] == 0
        time_converted << divided_time[0] << divided_time[1] << 0
      elsif divided_time[1] < 10
        time_converted << divided_time[0] << 0 << divided_time[1]
      else
        time_converted << divided_time[0] << divided_time[1]
      end

      score1 = efficiency(time_as_entered)
      score2 = efficiency(time_converted)

      score1 > score2 ? time_converted.join.to_i : time
    end

    def efficiency(*keys)
      keys = keys.dup.flatten!
      score = 0
      prev_floor = nil
      prev_value_position = nil

      # this key needs to be pressed at the very end
      keys << :cook

      keys.each_with_index do |key, idx|
        KEYPAD.each_pair do |floor, values|
          if values.include?(key)
            # we want to start adding score only when this is not first iteration
            if idx > 0
              score += (prev_floor - floor).abs
              score += (prev_value_position - values.index(key)).abs
            end
            prev_floor = floor
            prev_value_position = values.index(key)
          end
        end
      end

      score
    end
  end
end
