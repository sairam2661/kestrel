"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.remsi"(%0, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.cmpi"(%1, %arg1) <{predicate = 1 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %3 = "scf.if"(%2) ({
      %4 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%4) : (tensor<16xi32>) -> ()
    }, {
      %5 = "arith.constant"() <{value = dense<0> : tensor<16xi32>}> : () -> tensor<16xi32>
      "scf.yield"(%5) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi1>) -> tensor<16xi32>
    %6 = "tt.expand_dims"(%3) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %7 = "tt.addptr"(%arg0, %6) <{offset = 0 : index}> : (tensor<16xi32>, tensor<16x1xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()