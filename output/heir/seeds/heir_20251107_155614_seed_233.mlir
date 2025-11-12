"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, tensor<4xi32>, !secretsecret) -> i32, sym_name = "complex_secret_tensor_op"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: tensor<4xi32>, %arg2: !secretsecret):
    %0 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: tensor<4xi32>):
      %1 = "tensor.extract"(%arg3, 2) : (tensor<4xi32>, index) -> i32
      %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %3 = "arith.cmpi"(%1, %2, "slt") : (i32, i32) -> i1
      %4 = "scf.if"(%3) ({
      ^bb0:
        %5 = "tensor.extract"(%arg3, 0) : (tensor<4xi32>, index) -> i32
        "secret.yield"(%5) : (i32) -> ()
      }, {
      ^bb1:
        %6 = "tensor.extract"(%arg3, 3) : (tensor<4xi32>, index) -> i32
        "secret.yield"(%6) : (i32) -> ()
      }) : (i1) -> (i32)
    }) : (!secretsecret, tensor<4xi32>, !secretsecret) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()