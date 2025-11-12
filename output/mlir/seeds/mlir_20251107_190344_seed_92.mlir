"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "transform_example"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "transform.structured.match"(%arg0) <{sequence = @seq}> : (i32) -> i32
    %1 = "transform.structured.match"(%arg1) <{sequence = @seq}> : (i32) -> i32
    "func.return"(%0, %1) : (i32, i32) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{sym_name = "seq"}> ({
    ^bb0(%arg2: i32):
      %3 = "arith.addi"(%arg2, %arg2) : (i32, i32) -> i32
      "transform.yield"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()