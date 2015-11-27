module Faire
  module Validator
    def validate!
      validate || (raise Error::RequiredParametersMissing, "required parameters missing")
    end

    def validate
      @valid = inputs.all?(&:valid?)
    end

    def inputs
      @inputs ||= self.class.inputs.map{|input| input.tap{|i| i.value = attributes[input.name] } }
    end

    def valid?
      @valid == true
    end
  end
end
