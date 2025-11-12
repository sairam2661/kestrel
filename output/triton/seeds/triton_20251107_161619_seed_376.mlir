"builtin.module"() ({
  "tt.func"() <{function_type = (i1, tensor<64xi32>, tensor<64xi32>, tensor<64xf32>, tensor<64xf32>) -> (tensor<64xi32>, tensor<64xf32>, tensor<64xi32>, tensor<64xi32>), sym_name = "nested_ifs"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<64xi32>, %arg2: tensor<64xi32>, %arg3: tensor<64xf32>, %arg4: tensor<64xf32>):
    %0 = "arith.constant"() <{value = dense<8> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.select"(%arg0, %arg1, %arg2) : (i1, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.select"(%arg0, %arg3, %arg4) : (i1, tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
    %3:2 = "scf.if"(%arg0) ({
      %5 = "arith.muli"(%1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %6:2 = "scf.if"(%arg0) ({
        "scf.yield"(%5, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> ()
      }, {
        %7 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%7, %6) : (tensor<64xi32>, tensor<64xi32>) -> ()
      }) : (i1) -> (tensor<64xi32>, tensor<64xi32>)
      "scf.yield"(%6#0, %6#1) : (tensor<64xi32>, tensor<64xi32>) -> ()
    }, {
      %4 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%arg1, %4) : (tensor<64xi32>, tensor<64xi32>) -> ()
    }) : (i1) -> (tensor<64xi32>, tensor<64xi32>)
    "tt.return"(%1, %2, %3#0, %3#1) : (tensor<64xi32>, tensor<64xf32>, tensor<64xi32>, tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()