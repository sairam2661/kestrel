"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, index) -> tensor<3xi32>, sym_name = "tensor_insertion_with_control_flow"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "scf.if"(%arg1) ({
      %4 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, index) -> tensor<3xi32>
      "scf.yield"(%4) : (tensor<3xi32>) -> ()
    }, {
      %5 = "arith.subi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<3xi32>, index) -> tensor<3xi32>
      "scf.yield"(%5) : (tensor<3xi32>) -> ()
    }) : (index) -> tensor<3xi32>
    %6 = "tensor.insert"(%2, %3, %0) : (i32, tensor<3xi32>, index) -> tensor<3xi32>
    "func.return"(%6) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()