"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> index, sym_name = "test_tensor_dim_no_encoding"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %0) : (tensor<?xf32>, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

