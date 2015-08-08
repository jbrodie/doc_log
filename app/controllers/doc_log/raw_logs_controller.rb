module DocLog
  class RawLogsController < DocLog::ApplicationController

    def index
      session[:search] = params[:q] if params[:q].present?
      @q = RawLog.order(:id).ransack(session[:search])
      @logs = @q.result.page(params[:page]).per(15)
    end

    def show
      @q = RawLog.order(:id).ransack(session[:search])
      @log = RawLog.find(params[:id])
    end
  end
end
