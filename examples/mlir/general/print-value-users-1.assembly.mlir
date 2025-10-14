module {
  %c42_i32 = arith.constant 42 : i32
  %0 = "test.outerop"(%c42_i32) ({
    "test.innerop"(%c42_i32) : (i32) -> ()
  }) : (i32) -> i32
  %p, %p_0, %q = "test.custom_result_name"(%0) <{names = ["p", "p", "q"]}> : (i32) -> (i32, i32, i32)
  %r, %s = "test.custom_result_name"(%q, %q, %0) <{names = ["r", "s"]}> : (i32, i32, i32) -> (i32, i32)
  %u, %v = "test.custom_result_name"(%s, %q, %p) <{names = ["u", "v"]}> : (i32, i32, i32) -> (i32, i32)
}

