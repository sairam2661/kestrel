"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_mix"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %4 = "arith.muli"(%arg1, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.divsi"(%2, %4) <{signed = true}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6:2 = "scf.for"(%0, %5, %1, %0, %0) ({
    ^bb0(%arg2: tensor<16xi32>, %arg3: tensor<16xi32>, %arg4: tensor<16xi32>):
      %7 = "arith.cmpi"(%arg2, %arg3) <{predicate = 0 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %8 = "arith.select"(%7, %arg4, %arg2) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%8, %arg3, %arg4) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>)
    "tt.return"(%6#0) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()