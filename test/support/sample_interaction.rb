class Bill
  include Virtus.model

  attribute :name
end

class SampleInteraction
  include Faire

  integer :name, nullify_blank: true
  string :other, required: false
  object :bill, Bill

  def execute
    bill
  end
end
