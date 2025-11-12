"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x4xf32>) -> tensor<4x?xi32>, sym_name = "inplaceTypeChangeExtern", sym_visibility = "private", tied_operands = [0 : index]}> ({
  }) : () -> ()
  "util.func"() <{function_type = (tensor<?x4xf32>) -> tensor<4x?xi32>, sym_name = "inplaceTypeChangeCall", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?x4xf32>):
    %0 = "util.call"(%arg0) <{callee = @inplaceTypeChangeExtern, tied_operands = [0 : index]}> : (tensor<?x4xf32>) -> tensor<4x?xi32>
    "util.return"(%0) : (tensor<4x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

