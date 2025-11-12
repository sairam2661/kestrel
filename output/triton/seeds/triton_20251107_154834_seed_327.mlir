"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "complex_reduce_and_select"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %1 = "arith.xori"(%0, %0) : (tensor<16xi1>, tensor<16xi1>) -> tensor<16xi1>
    %2 = "tt.reduce"() <{operation = "add"}> ({
    ^bb1(%arg2: tensor<16xi1>, %arg3: tensor<16xi1>):
      %4 = "arith.muli"(%arg2, %arg3) : (tensor<16xi1>, tensor<16xi1>) -> tensor<16xi1>
      "scf.yield"(%4) : (tensor<16xi1>) -> ()
    }) : (tensor<16xi1>) -> tensor<16xi1>
    %5 = "arith.constant"() <{value = dense<1> : tensor<16xi1>}> : () -> tensor<16xi1>
    %6 = "arith.cmpi"(%2, %5, "eq") : (tensor<16xi1>, tensor<16xi1>) -> tensor<16xi1>
    %7 = "scf.if"(%6) ({
      %8 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %9 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%9) : (tensor<16xi32>) -> ()
    }, {
      "scf.yield"(%arg0) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi1>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()