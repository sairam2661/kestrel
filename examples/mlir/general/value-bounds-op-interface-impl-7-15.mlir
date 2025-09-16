"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> (), sym_name = "dynamic_dims_are_different"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.dim"(%arg0, %0) : (tensor<?xf32>, index) -> index
    %3 = "arith.addi"(%2, %1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    "test.compare"(%2, %3) <{cmp = "EQ"}> : (index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

