"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "complex_reduce_and_if"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.reduce"(%arg0) <{operation = "sum", axis = 0 : i32}> : (tensor<16xi32>) -> tensor<1xi32>
    %1 = "tt.reduce"(%arg1) <{operation = "prod", axis = 0 : i32}> : (tensor<16xi32>) -> tensor<1xi32>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi1>
    %3:2 = "scf.if"(%2) ({
      %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
      "scf.yield"(%5, %5) : (tensor<16x1xi32>, tensor<16x1xi32>) -> ()
    }, {
      %4 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
      "scf.yield"(%5, %5) : (tensor<16x1xi32>, tensor<16x1xi32>) -> ()
    }) : (tensor<1xi1>) -> (tensor<16x1xi32>, tensor<16x1xi32>)
    "tt.return"(%3#0, %3#1) : (tensor<16x1xi32>, tensor<16x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()