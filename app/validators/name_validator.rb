class NameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if starts_or_ends_with_whitespace(value) 
      record.errors[attribute] << (options[:message] || "is not a valid name")
    end
  end

  private
    def starts_or_ends_with_whitespace(value)
      value =~ /\A\s/ || value =~ /\s\z/
    end
end