"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x?xf32>, i1, tensor<i32>) -> (tensor<4x?xf32>, i1, tensor<i32>), sym_name = "functionExpansion", sym_visibility = "private", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg3: tensor<4x?xf32>, %arg4: i1, %arg5: tensor<i32>):
    %0:3 = "util.call"(%arg3, %arg4, %arg5) <{callee = @callee, tied_operands = [-1 : index, -1 : index, -1 : index]}> : (tensor<4x?xf32>, i1, tensor<i32>) -> (tensor<4x?xf32>, i1, tensor<i32>)
    "util.return"(%0#0, %0#1, %0#2) : (tensor<4x?xf32>, i1, tensor<i32>) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (tensor<4x?xf32>, i1, tensor<i32>) -> (tensor<4x?xf32>, i1, tensor<i32>), sym_name = "callee", sym_visibility = "private", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg0: tensor<4x?xf32>, %arg1: i1, %arg2: tensor<i32>):
    "util.return"(%arg0, %arg1, %arg2) : (tensor<4x?xf32>, i1, tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

