"builtin.module"() ({
  "func.func"() <{function_type = (f32, index, index) -> tensor<?x3x?xf32>, sym_name = "tensor.splat_dynamic"}> ({
  ^bb0(%arg0: f32, %arg1: index, %arg2: index):
    %0 = "tensor.splat"(%arg0, %arg1, %arg2) : (f32, index, index) -> tensor<?x3x?xf32>
    "func.return"(%0) : (tensor<?x3x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

