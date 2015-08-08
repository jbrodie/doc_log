module DocLog
  class Sync

    def self.sync
      puts "Last Updated: #{RawLog.last_updated}"
      fetch(1, RawLog.last_updated)
    end

    private

    def self.fetch(page_number, start_date)
      result = fetch_by_page(page_number, start_date)
      puts "Processing Page: #{page_number}"
      process_results(result)
      fetch(page_number + 1, start_date) if result.present?
    end

    def self.fetch_by_page(page_number, start_date)
      puts "Fetching Page: #{page_number}"
      DocRaptor.api_key DocLog::Engine.config.api_key
      begin
        dr = DocRaptor.list_doc_logs!(search: { start: start_date, end: DateTime.now },
                                    page: page_number, per_page: 10)
      rescue DocRaptorException::DocumentListingFailure
        puts '*********************************************************'
        puts 'Error reading page'
        puts '*********************************************************'
      end
      dr.parsed_response['doc_logs']
    end

    def self.process_results(results)
      results.each do |row|
        raw_log = RawLog.where(doc_raptor_log_id: row['id']).first_or_create
        # rename some of the keys to ensure they don't clash
        row['doc_raptor_log_id'] = row['id']
        row['doc_raptor_created_at'] = row['created_at']
        raw_log.update_attributes(row.except('id', 'created_at'))
      end
    end
  end
end
