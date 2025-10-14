module attributes {test.nested_nosymboltable_region} {
  "test.one_region_op"() ({
    "test.symbol_scope"() ({
      func.func nested @nfunction() {
        return
      }
      func.call @nfunction() : () -> ()
      "test.finish"() : () -> ()
    }) : () -> ()
    "test.finish"() : () -> ()
  }) : () -> ()
}

