Analytics = Segment::Analytics.new({
    write_key: "#{ENV['SEGMENT_API_ID']}",
    on_error: Proc.new { |status, msg| print msg }
 })
