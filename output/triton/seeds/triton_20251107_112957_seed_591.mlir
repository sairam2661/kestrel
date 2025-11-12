"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<1> : tensor<10xi32>}> : () -> tensor<10xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<10xi32>}> : () -> tensor<10xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflowFlags}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith_overflowFlags}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %4 = "tt.reduce"() <{reduceOp = "arith.addi", operands = ["%3"]}> : (tensor<10xi32>) -> i32
    "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()