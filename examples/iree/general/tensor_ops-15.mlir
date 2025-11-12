"builtin.module"() ({
  "util.func"() <{function_type = (f32) -> tensor<?x4xf32>, sym_name = "tensorSplatDynamic", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "flow.tensor.splat"(%arg0, %0) : (f32, index) -> tensor<?x4xf32>
    "util.return"(%1) : (tensor<?x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

