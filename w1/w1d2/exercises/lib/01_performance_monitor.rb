def measure(number = 1, &prc)
  all_run_times = []

  number.times do
    start_time = Time.now
    prc.call
    end_time = Time.now
    elapsed_time = end_time - start_time
    all_run_times << elapsed_time
  end
  average_run_times = (all_run_times.sum) / number
  average_run_times
end
