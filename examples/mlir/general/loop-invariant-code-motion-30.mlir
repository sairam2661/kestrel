"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "speculate_tensor_dim_known_rank_known_dim_inbounds"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 22 : index}> : () -> index
    %3 = "tensor.empty"(%2, %2) : (index, index) -> tensor<?x?xi1>
    "scf.for"(%0, %2, %1) ({
    ^bb0(%arg0: index):
      %4 = "tensor.dim"(%3, %1) : (tensor<?x?xi1>, index) -> index
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

