class Device < ActiveRecord::Base
  belongs_to :autnum

  def cli
    model = "Cli::#{platform.classify}".safe_constantize
    @_cli ||= model.new(self)
  end
end
