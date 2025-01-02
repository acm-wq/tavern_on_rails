module SetUnixTime
  extend ActiveSupport::Concern

  included do
    before_save :set_unix_time
  end

  def set_unix_time
    self.unix_time = Time.current.to_i
  end
end
