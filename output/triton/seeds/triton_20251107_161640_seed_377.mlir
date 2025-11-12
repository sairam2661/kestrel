"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>, %arg2: tensor<64xi32>):
    %0 = "scf.if"(%arg0) ({
      ^bb1(%arg3: tensor<64xi32>):
        %1 = "arith.addi"(%arg3, %arg1) <{overflowFlags = #arith_overflow_values}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%1) : (tensor<64xi32>) -> ()
    }, {
      ^bb2:
        %2 = "arith.subi"(%arg2, %arg1) <{overflowFlags = #arith_overflow_values}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%2) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi32>) -> (tensor<64xi32>)
    %3 = "scf.if"(%arg0) ({
      ^bb3(%arg4: tensor<64xi32>):
        %5 = "arith.muli"(%arg4, %arg1) <{overflowFlags = #arith_overflow_values}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%5) : (tensor<64xi32>) -> ()
    }, {
      ^bb4:
        %6 = "arith.divsi"(%arg2, %arg1) <{overflowFlags = #arith_overflow_values}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%6) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi32>) -> (tensor<64xi32>)
    %7 = "scf.for"(%arg0, %arg1, %arg2) ({
      ^bb5(%arg5: tensor<64xi32>, %arg6: tensor<64xi32>, %arg7: tensor<64xi32>):
        %8 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith_overflow_values}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%8, %arg7) : (tensor<64xi32>, tensor<64xi32>) -> ()
    }) : (tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>, tensor<64xi32>)
    "tt.return"(%0, %3, %7) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()