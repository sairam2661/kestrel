"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.divsi"(%0, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.xori"(%1, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32}> : () -> tensor<16xi32>
    %4 = "arith.remsi"(%3, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "scf.for"(%0, %3, %4) ({
    ^bb0(%arg2: tensor<16xi32>):
      %6 = "arith.cmpi"(%arg2, %5) <{predicate = 11 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      "scf.yield"() : () -> ()
    }) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> ()
    %7 = "tt.reduce"(%5, %6) ({
    ^bb0(%arg3: tensor<16xi32>):
      %8 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%8) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warp" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()