"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>, tensor<64xi32>), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: tensor<64xi32>, %arg3: tensor<64xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %4 = "arith.divsi"(%arg2, %3) : (tensor<64xi32>, i32) -> tensor<64xi32>
    %5 = "arith.remsi"(%arg2, %3) : (tensor<64xi32>, i32) -> tensor<64xi32>
    %6 = "arith.select"(%0, %arg2, %arg3) : (i32, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "arith.select"(%1, %arg3, %arg2) : (i32, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %8 = "scf.if"(%2) ({
      %9 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%9) : (tensor<64xi32>) -> ()
    }, {
      "scf.yield"(%arg2) : (tensor<64xi32>) -> ()
    }) : (i32) -> tensor<64xi32>
    "tt.return"(%6, %7) : (tensor<64xi32>, tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()