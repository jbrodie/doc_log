generation_log = <<-STRING
msg|inf||loading HTML5 input: -
sta|Running scripts...
msg|inf||loading script: /data/docraptor/releases/20150803200107/lib/princess.js
sta|Applying style sheets...
msg|inf||loading style sheet: /data/docraptor/releases/20150803200107/lib/prince_test_mode.css
msg|inf||loading style sheet: http:///assets/question_report-5d8c61657ef6243ddd63e2d2396780ec.css
msg|wrn|http:///assets/question_report-5d8c61657ef6243ddd63e2d2396780ec.css|Couldn't resolve host 'http'
sta|Preparing document...
sta|Converting document...
prg|0
msg|inf||used font: Times New Roman, Bold
msg|inf||used font: Times New Roman, Regular
msg|inf||used font: Times New Roman, Italic
prg|22
prg|42
prg|63
prg|86
prg|100
dat|total_page_count|5
fin|success
Fri Aug 7 14:03:38 2015: ---- begin
Fri Aug 7 14:03:38 2015: Loading document...
Fri Aug 7 14:03:38 2015: loading HTML5 input: -
Fri Aug 7 14:03:38 2015: Running scripts...
Fri Aug 7 14:03:38 2015: loading script: /data/docraptor/releases/20150803200107/lib/princess.js
Fri Aug 7 14:03:38 2015: Applying style sheets...
Fri Aug 7 14:03:38 2015: loading style sheet: /data/docraptor/releases/20150803200107/lib/prince_test_mode.css
Fri Aug 7 14:03:38 2015: loading style sheet: http:///assets/question_report-5d8c61657ef6243ddd63e2d2396780ec.css
Fri Aug 7 14:03:38 2015: http:///assets/question_report-5d8c61657ef6243ddd63e2d2396780ec.css: warning: Couldn't resolve host 'http'
Fri Aug 7 14:03:38 2015: Preparing document...
Fri Aug 7 14:03:38 2015: Converting document...
Fri Aug 7 14:03:38 2015: used font: Times New Roman, Bold
Fri Aug 7 14:03:38 2015: used font: Times New Roman, Regular
Fri Aug 7 14:03:38 2015: used font: Times New Roman, Italic
Fri Aug 7 14:03:38 2015: stats: total_page_count: 5
Fri Aug 7 14:03:38 2015: finished: success
Fri Aug 7 14:03:38 2015: ---- end
STRING

(1..100).each do |x|
  DocLog::RawLog.create(  name: "Company #{x}",
                          document_type: "pdf",
                          document_url: "http://www.docraptor.com",
                          test: true,
                          tag: "Tag1, Tag2, Tag3",
                          success: true,
                          javascript: true,
                          async: true,
                          ip_address: "10.10.10.10",
                          created_at: DateTime.now,
                          generation_time: 10.0,
                          input_size: 30000,
                          output_size: 250000,
                          prince_options: nil,
                          validation_errors: "Something bad happened",
                          generation_log: generation_log
                  )
end
