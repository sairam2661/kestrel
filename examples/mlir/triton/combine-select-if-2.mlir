"builtin.module"() ({
  "tt.func"() <{function_type = (i1, tensor<64xi32>, tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>), sym_name = "if_multiple_sel"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<64xi32>, %arg2: tensor<64xi32>, %arg3: tensor<64xi32>, %arg4: tensor<64xi32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %1 = "arith.select"(%arg0, %arg3, %arg4) : (i1, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "scf.if"(%arg0) ({
      %3 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%3) : (tensor<64xi32>) -> ()
    }, {
      "scf.yield"(%arg1) : (tensor<64xi32>) -> ()
    }) : (i1) -> tensor<64xi32>
    "tt.return"(%0, %1, %2) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()

