require "virtus"
require "faire/version"
require "faire/input"
require "faire/interactor"
require "faire/runner"
require "faire/attributes"
require "faire/error"
require "faire/validator"

module Faire
  def self.included(base)
    base.include(Virtus.model)
    base.include(Validator)

    base.extend(Attributes)
    base.extend(Runner)
  end
end
