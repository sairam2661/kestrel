"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> index, sym_name = "tensor_dim_of_loop_result"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "scf.for"(%0, %2, %1, %arg0) ({
    ^bb0(%arg1: index, %arg2: tensor<?x?xf32>):
      "scf.yield"(%arg2) : (tensor<?x?xf32>) -> ()
    }) : (index, index, index, tensor<?x?xf32>) -> tensor<?x?xf32>
    %4 = "tensor.dim"(%3, %0) : (tensor<?x?xf32>, index) -> index
    "func.return"(%4) : (index) -> ()
  }) : () -> ()
}) : () -> ()

