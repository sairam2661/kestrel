"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x?xi32>) -> tensor<?x?xi32>, sym_name = "exportA", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg1: tensor<?x?xi32>):
    "util.return"(%arg1) : (tensor<?x?xi32>) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (tensor<?x?xi32>) -> tensor<?x?xi32>, sym_name = "exportB", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?x?xi32>):
    %0 = "util.call"(%arg0) <{callee = @exportA, tied_operands = [-1 : index]}> : (tensor<?x?xi32>) -> tensor<?x?xi32>
    "util.return"(%0) : (tensor<?x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

