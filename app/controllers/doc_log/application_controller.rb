module DocLog
  class ApplicationController < ActionController::Base
    def last_updated
      RawLog.order(:doc_raptor_created_at).last.doc_raptor_created_at
    end
    helper_method :last_updated
  end
end
