"builtin.module"() ({
  "util.func"() <{function_type = (i8, index) -> tensor<?x128xi8>, sym_name = "tensorSplat", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i8, %arg1: index):
    %0 = "flow.tensor.splat"(%arg0, %arg1) : (i8, index) -> tensor<?x128xi8>
    "util.return"(%0) : (tensor<?x128xi8>) -> ()
  }) : () -> ()
}) : () -> ()

