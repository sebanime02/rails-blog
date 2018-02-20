module Trackable
  extend ActiveSupport::Concern

  def track_event(category, action,label,value)
    push_to_google_analytics('event', ec: category, ea: action,el: label ,ev: value)
  end

  def track_page_view
    path = Rack::Utils.escape("/#{controller_path}/#{action_name}")
    push_to_google_analytics('pageview', dp: path)
  end

  def push_to_google_analytics(event_type, options)
    Net::HTTP.get_response URI 'http://www.google-analytics.com/collect?' + {
      v:   1, # Google Analytics Version
      tid: ENV['GA_TRACKING_ID'],
      cid: '555',
      t:   event_type
    }.merge(options).to_query
  end
end
