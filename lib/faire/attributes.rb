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

    def input(name, klass_or_attributes = String, attributes = {})
      if klass_or_attributes.is_a?(Hash)
        klass = String
        attributes = klass_or_attributes
      else
        klass = klass_or_attributes
      end

      attrs = defaults.merge(attributes)

      self.inputs << Input.new(name, attrs)
      self.attribute(name, klass, attrs)
    end
  end
end
