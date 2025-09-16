"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, index) -> (), sym_name = "dim_all_positive"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %arg1) : (tensor<?xf32>, index) -> index
    "test.compare"(%1, %0) <{cmp = "GE"}> : (index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

