"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "foo", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?xf32>):
    "util.return"(%arg0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

