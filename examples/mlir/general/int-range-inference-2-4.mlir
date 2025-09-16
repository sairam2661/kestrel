"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x5xi32>, index) -> index, sym_name = "dim_some_omitting_dynamic"}> ({
  ^bb0(%arg0: tensor<?x3x5xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.maxsi"(%arg1, %0) : (index, index) -> index
    %2 = "tensor.dim"(%arg0, %1) : (tensor<?x3x5xi32>, index) -> index
    %3 = "test.reflect_bounds"(%2) : (index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
}) : () -> ()

