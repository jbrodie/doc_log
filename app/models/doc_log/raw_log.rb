module DocLog
  class RawLog < ActiveRecord::Base
    def self.last_updated
      order(doc_raptor_created_at: :asc).try(:last).try(:doc_raptor_created_at) || "2015-01-01 00:00:00 UTC"
    end
  end
end
