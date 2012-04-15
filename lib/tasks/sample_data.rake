namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_events
  end

  def make_events
    Event.create!(title: "Event 1", start: Date.today, url: "http://www.google.com")
    Event.create!(title: "Event 2", start: Date.today, end: Date.tomorrow, url: "http://www.yahoo.com")
    Event.create!(title: "Event 3", start: Date.new(2012, 4, 25), end: Date.new(2012, 4, 27))
    Event.create!(title: "Event 4", start: Date.new(2012, 7, 10))
    Event.create!(title: "JRuby Conf", start: Date.new(2012, 5, 21), end: Date.new(2012, 5, 23), url: "http://jrubyconf.com/")
  end
end