def fibs(n)
  sequence = []

  for i in 1..n do
    sequence << i - 1 if i == 1 || i == 2

    sequence << sequence[-1] + sequence[-2] if i >= 3
  end

  sequence
end

def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  if n >= 3
    sequence = fibs_rec(n - 1)
    sequence << sequence[-1] + sequence[-2]
  end

  sequence
end
