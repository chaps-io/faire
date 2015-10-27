module Faire
  module Attributes
    def required_inputs
      inputs.select(&:required?)
    end

    def inputs
      @inputs ||= []
    end

    def defaults
      { nullify_blank: true, required: true }.freeze
    end

    def string(name, attributes = {})
      input(name, String, attributes)
    end

    def object(name, klass, attributes = {})
      klass.include(Virtus.model)

      input(name, klass, attributes)
    end

    def input(name, klass, attributes)
      attrs = defaults.merge(attributes)

      self.inputs << Input.new(name, String, attrs)
      self.attribute(name, klass, attrs)
    end

    def integer(name, attributes = {})
      input(name, Integer, attributes)
    end

    def float(name, attributes = {})
      input(name, Float, attributes)
    end

    def date(name, attributes = {})
      input(name, Date, attributes)
    end
  end
end
