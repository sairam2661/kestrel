"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x5xi32>, index) -> index, sym_name = "dim_any_dynamic"}> ({
  ^bb0(%arg0: tensor<?x5xi32>, %arg1: index):
    %0 = "tensor.dim"(%arg0, %arg1) : (tensor<?x5xi32>, index) -> index
    %1 = "test.reflect_bounds"(%0) : (index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

