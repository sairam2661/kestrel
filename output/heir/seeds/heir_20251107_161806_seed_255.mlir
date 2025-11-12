"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xi32>, tensor<4x3xi32>, i1) -> tensor<4x3xi32>, sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: tensor<4x3xi32>, %arg1: tensor<4x3xi32>, %arg2: i1):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index

    %3 = "scf.if"(%arg2) ({
      %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4x3xi32>, tensor<4x3xi32>) -> tensor<4x3xi32>
      "scf.yield"(%4) : (tensor<4x3xi32>) -> ()
    }, {
      %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4x3xi32>, tensor<4x3xi32>) -> tensor<4x3xi32>
      "scf.yield"(%5) : (tensor<4x3xi32>) -> ()
    }) : (i1) -> tensor<4x3xi32>

    %6 = "scf.for"(%0, %1, %2) <{step = 1}> ({
      ^bb1(%iv: index):
        %7 = "arith.addi"(%3, %iv) <{overflowFlags = #arith_overflownone}> : (tensor<4x3xi32>, index) -> tensor<4x3xi32>
        %8 = "arith.muli"(%7, %7) <{overflowFlags = #arith_overflownone}> : (tensor<4x3xi32>, tensor<4x3xi32>) -> tensor<4x3xi32>
        "scf.yield"(%8) : (tensor<4x3xi32>) -> ()
    }) : (index, tensor<4x3xi32>) -> tensor<4x3xi32>

    "func.return"(%6) : (tensor<4x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()