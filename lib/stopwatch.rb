class StopWatch
  
  def self.start
    @@start_time = Time.now
  end

  def self.stop
    @@stop_time = Time.now
    puts "Total time: #{@@stop_time - @@start_time}"
  end
  
end