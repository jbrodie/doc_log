module DocLog
  module RawLogHelper
    def status_label status
      return '<span class="label label-success">Success</span>'.html_safe if status
      '<span class="label label-danger">Failed</span>'.html_safe
    end

    def javascript_label status
      return '<span class="glyphicon glyphicon-ok-circle" aria-hidden="true" style="color:green"></span>'.html_safe if status
      '<span class="glyphicon glyphicon-ban-circle" aria-hidden="true" style="color:red"></span>'.html_safe
    end

    def aysnc_label status
      '<span class="glyphicon glyphicon-ok-circle" style="color:green"></span>'.html_safe if status
    end

    def test_label status
      '<span class="glyphicon glyphicon-ok-circle" style="color:green"></span>'.html_safe if status
    end

    def document_type_label document_type
      document_type.upcase
    end

  end
end
