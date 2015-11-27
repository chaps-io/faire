# Faire

### Yet another Interactors for ruby.

## Usage  

### Faire is very unstable at the moment, as it’s on very early development stage. Expect breaking changes, use at own risk.

1. Declare your interactor:
```ruby

class YourInteractor
   include Faire
   
   input :required_input
   input :another_required_input, klass: String #it will be coerced to String
   input :optional_integer, required: false, klass: Integer
   input :example_array, klass: Array[Integer], allow_empty: false # will try to coerce all array elements to integer, plus it won’t allow empty array
   
   
   def execute
     # put your business logic here.
     # #attributes will hold coerced values
     User.create(attributes)
   end
end
```

2. Use your interactor:

You can use either `YourInteractor.run(params)`, which will return Interactor object (which responds to methods like `valid?`, `errors` and `results`, or `YourInteractor.run!(params)` which will either return result, or raise error.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
