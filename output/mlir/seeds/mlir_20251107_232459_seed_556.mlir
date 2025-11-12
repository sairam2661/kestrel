"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_transforms"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.divsi"(%arg0, %arg1) : (i32, i32) -> i32
    %4 = "transform.named_sequence"() <{function_type = (!transformany_op) -> (), sym_name = "nested_sequence"}> ({
    ^bb1(%arg2: !transformany_op):
      %5 = "transform.test_produce_null_param"() : () -> !transformparam
      "transform.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0, %3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()