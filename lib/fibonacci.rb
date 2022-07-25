def fibs(n)
  sequence = []

  for i in 1..n do
    sequence << i - 1 if i == 1 || i == 2

    sequence << sequence[-1] + sequence[-2] if i >= 3
  end

  sequence
end
