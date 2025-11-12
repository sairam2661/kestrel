"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<10x10xi32>) -> i32, sym_name = "complex_op"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<10x10xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "tensor.extract"(%arg1, %1) : (tensor<10x10xi32>, index) -> i32
    %3 = "arith.muli"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.addi"(%4, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()