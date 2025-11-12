"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.make_range"() <{end = 1024 : i32, start = 0 : i32}> : () -> tensor<1024xi32>
    %1 = "arith.constant"() <{value = dense<3> : tensor<1024xi32>}> : () -> tensor<1024xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %3 = "arith.addi"(%2, %arg0) <{overflowFlags = #arith_overflow_flags}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %4 = "arith.subi"(%3, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %5 = "arith.xori"(%4, %arg0) : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %6 = "arith.cmpi"(%5, %arg1, "slt") : (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi1>
    %7 = "arith.select"(%6, %arg0, %arg1) : (tensor<1024xi1>, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    "tt.return"(%7) : (tensor<1024xi32>) -> ()
  }) : () -> ()
}) : () -> ()