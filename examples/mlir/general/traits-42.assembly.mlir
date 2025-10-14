module {
  "test.symbol_scope"() ({
    func.func private @foo()
    "test.finish"() : () -> ()
  }) : () -> ()
  func.func private @foo()
}

