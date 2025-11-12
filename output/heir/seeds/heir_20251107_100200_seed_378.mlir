"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<4xi32>, !secretsecret) -> (tensor<4xi32>, !secretsecret), sym_name = "tensor_secret_interaction"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: !secretsecret):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %3 = "secret.generic"(%arg1, %2) ({
    ^bb0(%arg2: i3, %arg3: i32):
      %4 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i3, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secretsecret, i32) -> i32
    %5 = "tensor.insert"(%3, %arg0, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%5, %arg1) : (tensor<4xi32>, !secretsecret) -> ()
  }) : () -> ()
}) : () -> ()