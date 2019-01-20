class StatisticSerializer
  def initialize(statistic)
    @statistic = statistic
  end

  def as_json(*)
    data = {
      date: @statistic.date,
      tiny_id: @statistic.tiny_id
    }
    data[:errors] = @statistic.errors if @statistic.errors.any?
    data
  end
end