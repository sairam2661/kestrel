"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xf32>) -> tensor<16xf32>, sym_name = "tensor.concat"}> ({
  ^bb0(%arg0: tensor<8xf32>):
    %0 = "tensor.concat"(%arg0, %arg0) <{dim = 0 : i64}> : (tensor<8xf32>, tensor<8xf32>) -> tensor<16xf32>
    "func.return"(%0) : (tensor<16xf32>) -> ()
  }) : () -> ()
}) : () -> ()

