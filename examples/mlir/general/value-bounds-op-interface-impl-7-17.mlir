"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> (), sym_name = "dynamic_dims_are_maybe_equal_2"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.dim"(%arg0, %0) : (tensor<?x?xf32>, index) -> index
    %3 = "tensor.dim"(%arg0, %1) : (tensor<?x?xf32>, index) -> index
    "test.compare"(%2, %3) <{cmp = "EQ"}> : (index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

