"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5xi32>) -> index, sym_name = "dim_const"}> ({
  ^bb0(%arg0: tensor<3x5xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %0) : (tensor<3x5xi32>, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

