class MeetupSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :date, :time, :location, :description, :interested_count
  end