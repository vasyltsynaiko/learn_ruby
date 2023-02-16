def measure(count=1, &block)
    durations = 0
    count.times do
      stime = Time.now
      yield
      etime = Time.now
      durations += etime - stime
    end
    durations/ count
  end