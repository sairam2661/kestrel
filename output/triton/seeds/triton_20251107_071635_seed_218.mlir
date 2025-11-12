"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "unary_op_with_reduce"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
    %3 = "arith.select"(%arg1, %1, %arg0) : (i32, i32, i32) -> i32
    %4 = "arith.xori"(%3, %0) : (i32, i32) -> i32
    %5 = "tt.reduce"() <{init = 0 : i32, operation = "add"}> ({
    ^bb0(%arg2: i32):
      "scf.yield"(%arg2) : (i32) -> ()
    }) : (i32, tensor<10xi32>) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()