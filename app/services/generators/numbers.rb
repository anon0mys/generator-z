module Generators::Numbers
  ALLOWED_TYPES = %w[number decimal]

  def number
    if @options[:from] || @options[:to]
      return between(@options[:from], @options[:to])
    end
    Faker::Number.send(@type || 'number')
  end

  private
  
  def between(from, to)
    from ||= 0
    to ||= 5000
    if @type == 'decimal'
      from.to_f
      to.to_f
    end
    Faker::Number.between(from: from, to: to)
  end
end