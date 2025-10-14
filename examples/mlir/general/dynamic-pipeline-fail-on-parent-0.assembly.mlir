module {
  module @inner_mod1 {
    "test.symbol"() <{sym_name = "foo"}> : () -> ()
    func.func private @bar()
  }
}

