"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> index, sym_name = "tensor_dim_of_iter_arg"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3:2 = "scf.for"(%0, %2, %1, %arg0, %0) ({
    ^bb0(%arg1: index, %arg2: tensor<?x?xf32>, %arg3: index):
      %4 = "tensor.dim"(%arg2, %0) : (tensor<?x?xf32>, index) -> index
      "scf.yield"(%arg2, %4) : (tensor<?x?xf32>, index) -> ()
    }) : (index, index, index, tensor<?x?xf32>, index) -> (tensor<?x?xf32>, index)
    "func.return"(%3#1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

