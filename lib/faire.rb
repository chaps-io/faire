require "hanami-validations"
require "dry-types"
require "dry-logic"
require "dry-validation"
require "faire/version"

module Faire
  ValidationError = Class.new(StandardError)

  def self.included(base)
    base.include(Hanami::Validations)
    base.extend(Forwardable)
    base.extend(ClassMethods)
    base.def_delegators :validate, :success?, :errors
  end

  protected
  def attributes
    validate.output
  end


  module ClassMethods
    def run!(input)
      object = new(input)
      validation = object.validate
      raise ValidationError, validation.errors unless validation.success?
      object.execute
    end
  end
end
