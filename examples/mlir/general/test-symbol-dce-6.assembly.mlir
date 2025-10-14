module attributes {test.nested_nosymboltable_region_notcalled} {
  "test.one_region_op"() ({
    builtin.module {
      func.func nested @nested() {
        return
      }
      func.func @main() {
        return
      }
    }
    "test.finish"() : () -> ()
  }) : () -> ()
}

