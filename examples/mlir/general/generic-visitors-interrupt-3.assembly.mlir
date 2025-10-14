module {
  func.func @main() {
    "foo"() : () -> ()
    "test.two_region_op"() ({
      "work"() : () -> ()
    }, {
      "work"() : () -> ()
    }) {interrupt_after_all = true} : () -> ()
    return
  }
}

