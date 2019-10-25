defmodule Stack do
  def new, do: []

  #create a list within a list within a list within a list :D
  # the last item is always a simple item
  def push(stack, item), do: [stack|item]

  #pop is a
  def pop([]), do: raise("Stack is empty!")
  def pop([stack | item]), do: {stack, item}

  def empty?([]), do: true
  def empty?(_), do: false

  def test(x) do
     Enum.reduce(0..x, Stack.new, fn entry, stack -> Stack.push(stack, entry) end)
  end
end
