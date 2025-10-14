module {
  func.func private @dead_private_function()
  func.func private @live_private_function()
  "live.user"() {uses = [@live_private_function]} : () -> ()
  "live.user"() {uses = [@unknown_symbol]} : () -> ()
}

