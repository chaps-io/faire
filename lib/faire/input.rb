module Faire
  class Input
    attr_reader :name, :attributes
    attr_accessor :value

    def initialize(name, required: false, **attributes)
      @name = name
      @attributes = attributes
      @required = !!required
    end

    def required?
      @required == true
    end

    def valid?
      required_and_set? &&
      value_not_empty?
    end

    private
    def required_and_set?
      return true if !required?

      required? && !!value
    end

    def value_not_empty?
      return true if !value.respond_to?(:empty?) || attributes[:allow_empty]

      !value.empty?
    end
  end
end
