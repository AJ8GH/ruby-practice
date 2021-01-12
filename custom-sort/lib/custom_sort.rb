def custom_sort(array)
  sorted_array = []
  array.size.times do
    sorted_array << array.min
    array.delete_at(array.index(array.min))
  end
  sorted_array
end


def custom_sort(array)
  recursive_sort
end

def recursive_sort
end
