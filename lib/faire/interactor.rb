module Faire
  class Interactor
    extend Forwardable
    attr_reader :object

    def_delegators :object, :validate, :execute, :valid?

    def initialize(object)
      @object = object
    end

    def validate_and_execute
      validate
      result
    end

    def result
      @result ||= execute if valid?
    end

    def errors
      @errors ||= object.errors
    end

    def success?
      errors.empty?
    end

    def fail?
      errors.any?
    end
  end
end
