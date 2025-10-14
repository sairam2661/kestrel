module {
  func.func @recursively_legal_invalid_op() {
    builtin.module attributes {test.recursively_legal} {
      %0 = "test.illegal_op_f"() : () -> i32
    }
    builtin.module {
      func.func @dynamic_func(%arg0: i64) attributes {test.recursively_legal} {
        %0 = "test.illegal_op_f"() : () -> i32
        "test.return"() : () -> ()
      }
    }
    "test.return"() : () -> ()
  }
}

