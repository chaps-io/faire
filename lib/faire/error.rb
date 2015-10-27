module Faire
  module Error
    RequiredParametersMissing = Class.new(StandardError)
    CoercionError = Class.new(StandardError)
  end
end
