module attributes {test.simple} {
  func.func private @dead_private_function()
  func.func nested @dead_nested_function()
  func.func private @live_private_function()
  func.func nested @live_nested_function()
  func.func @public_function() {
    "foo.return"() {uses = [@live_private_function, @live_nested_function]} : () -> ()
  }
}

