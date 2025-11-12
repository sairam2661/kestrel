"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %arg0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg1, "slt") : (i32, i32) -> i1
    %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %4 = "arith.select"(%2, %3, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "test_nested_calls"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "func.call"(%arg0, %arg1) <{callee = @complex_arithmetic}> : (i32, i32) -> i32
    %1 = "func.call"(%0, %arg1) <{callee = @complex_arithmetic}> : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()