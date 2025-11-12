"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> tensor<?x?xi32>, sym_name = "splatDynamicShape", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "flow.tensor.splat"(%0, %arg0, %arg1) : (i32, index, index) -> tensor<?x?xi32>
    "util.return"(%1) : (tensor<?x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

