"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4xi8>, i1) -> tensor<4xi8>, sym_name = "conditional_rotate"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi8>, %arg2: i1):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "scf.if"(%arg2) ({
      %2 = "tensor_ext.rotate"(%arg1, %0) : (tensor<4xi8>, i32) -> tensor<4xi8>
      "scf.yield"(%2) : (tensor<4xi8>) -> ()
    }, {
      "scf.yield"(%arg1) : (tensor<4xi8>) -> ()
    }) : (i1) -> tensor<4xi8>
    "func.return"(%1) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()