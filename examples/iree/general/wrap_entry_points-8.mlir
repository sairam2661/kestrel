"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x2xi32>) -> tensor<2x?xi32>, sym_name = "import", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  }) : () -> ()
  "util.func"() <{function_type = (tensor<?x2xi32>) -> tensor<2x?xi32>, sym_name = "caller", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?x2xi32>):
    %0 = "util.call"(%arg0) <{callee = @import, tied_operands = [-1 : index]}> : (tensor<?x2xi32>) -> tensor<2x?xi32>
    "util.return"(%0) : (tensor<2x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

