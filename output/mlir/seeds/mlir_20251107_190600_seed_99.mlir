"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<1xi32>) -> (index, tensor<1xi32>), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: index, %arg1: tensor<1xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
    %1 = "scf.yield"(%0, %arg1) : (index, tensor<1xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<1xi32>) -> (tensor<1xi32>), sym_name = "tensor_op"}> ({
  ^bb0(%arg0: tensor<1xi32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (tensor<1xi32>, i32) -> tensor<1xi32>
    "scf.yield"(%1) : (tensor<1xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index) -> (index, tensor<1xi32>), sym_name = "complex_control_flow"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (index, index, i32) -> i1
    "scf.if"(%0) ({
    ^bb1:
      %1 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
      "scf.yield"(%1) : (index) -> ()
    }) {
    } : (index) -> ()
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = [0]}> : () -> tensor<1xi32>
    "scf.yield"(%2, %4) : (index, tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()