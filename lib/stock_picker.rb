def stock_picker(array)
  ans = [0,1]
  days = array.length
  i = 0
  while i < days - 1
    j = i + 1
    while j < days
      ans = [i, j] if array[ans[-1]] - array[ans[0]] < array[j] - array[i]
      j += 1
    end
    i += 1
  end
  return ans unless array[ans[-1]] - array[ans[0]] <= 0
  return "Loss reported" if array[ans[-1]] - array[ans[0]] < 0
  return [] if array[ans[-1]] - array[ans[0]] = 0
end
