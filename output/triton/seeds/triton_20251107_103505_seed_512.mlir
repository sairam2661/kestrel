"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.remsi"(%arg0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.muli"(%arg0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %7 = "arith.select"(%6, %arg0, %arg1) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %8 = "tt.reduce"(%2, "arith.addi", %0) <{overflowFlags = #arith_overflow_}> : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%8) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()