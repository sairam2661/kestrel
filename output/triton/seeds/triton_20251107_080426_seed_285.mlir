"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<128xi32>) -> (tensor<128xi32>, i32), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<128xi32>):
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.muli"(%arg1, %4) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.addi"(%5, %2) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.subi"(%6, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %8 = "arith.divsi"(%7, %3) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %9 = "arith.remsi"(%8, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %10 = "arith.cmpi"(%arg0, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %11 = "arith.select"(%10, %9, %arg0) : (i1, tensor<128xi32>, i32) -> i32
    %12 = "tt.expand_dims"(%arg1) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xi32>
    "tt.return"(%12, %11) : (tensor<128x1xi32>, i32) -> ()
  }) : () -> ()
}) : () -> ()