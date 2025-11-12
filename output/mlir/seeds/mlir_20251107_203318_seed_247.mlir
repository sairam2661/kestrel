"builtin.module"() ({
  "func.func"() <{function_type = (i32, index, index) -> (tensor<2x2xi32>, i32), sym_name = "complex_scf_loop_and_arith"}> ({
  ^bb0(%arg0: i32, %arg1: index, %arg2: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "tosa.const"() <{values = dense<[[0, 0], [0, 0]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %5 = "scf.for"(%0, %2, %1, %4) ({
    ^bb0(%arg3: index, %arg4: tensor<2x2xi32>):
      %6 = "scf.for"(%0, %arg3, %1, %arg4) ({
      ^bb0(%arg5: index, %arg6: tensor<2x2xi32>):
        %7 = "arith.addi"(%arg6, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, index) -> tensor<2x2xi32>
        "scf.yield"(%7) : (tensor<2x2xi32>) -> ()
      }) : (index, index, index, tensor<2x2xi32>) -> tensor<2x2xi32>
      "scf.yield"(%6) : (tensor<2x2xi32>) -> ()
    }) : (index, index, index, tensor<2x2xi32>) -> tensor<2x2xi32>
    %8 = "arith.addi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, i32) -> tensor<2x2xi32>
    "func.return"(%8, %5) : (tensor<2x2xi32>, tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()