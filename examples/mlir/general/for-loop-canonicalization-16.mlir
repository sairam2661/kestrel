"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> index, sym_name = "tensor_dim_of_loop_result_no_canonicalize"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3:2 = "scf.for"(%0, %2, %1, %arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: tensor<?x?xf32>, %arg4: tensor<?x?xf32>):
      "scf.yield"(%arg3, %arg1) : (tensor<?x?xf32>, tensor<?x?xf32>) -> ()
    }) : (index, index, index, tensor<?x?xf32>, tensor<?x?xf32>) -> (tensor<?x?xf32>, tensor<?x?xf32>)
    %4 = "tensor.dim"(%3#1, %0) : (tensor<?x?xf32>, index) -> index
    "func.return"(%4) : (index) -> ()
  }) : () -> ()
}) : () -> ()

