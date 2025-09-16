"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>) -> tensor<5xi32>, sym_name = "arith_cast_tensor"}> ({
  ^bb0(%arg0: tensor<5xf32>):
    %0 = "arith.fptosi"(%arg0) : (tensor<5xf32>) -> tensor<5xi32>
    "func.return"(%0) : (tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

