"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "inplaceExtern", sym_visibility = "private", tied_operands = [0 : index]}> ({
  }) : () -> ()
  "util.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "inplaceCall", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "util.call"(%arg0) <{callee = @inplaceExtern, tied_operands = [0 : index]}> : (tensor<?xf32>) -> tensor<?xf32>
    "util.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

