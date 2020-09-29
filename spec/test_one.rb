require "order"

puts "rspec pid: #{Process.pid}"

trap 'USR1' do
  threads = Thread.list

  puts
  puts "=" * 80
  puts "Received USR1 signal; printing all #{threads.count} thread backtraces."

  threads.each do |thr|
    description = thr == Thread.main ? "Main thread" : thr.inspect
    puts
    puts "#{description} backtrace: "
    puts thr.backtrace.join("\n")
  end

  puts "=" * 80
end

describe Order do
  describe "#submit" do

   describe "pause one" do
     it "puts the ordered book in customer's order history" do
       sleep 5
     end
   end

   describe "pause two" do
     it "is marked as complete" do
       sleep 2
     end

     it "pause three" do
       sleep 4
     end
   end
  end
end
