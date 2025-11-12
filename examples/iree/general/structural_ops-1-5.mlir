"builtin.module"() ({
  "util.func"() <{function_type = (i32, tensor<4x?xi32>, tensor<4x?xi32>) -> (tensor<4x?xi32>, tensor<?x4xf32>), sym_name = "externTied", sym_visibility = "private", tied_operands = [1 : index, 2 : index]}> ({
  }) : () -> ()
  "util.func"() <{function_type = (i32, tensor<4x?xi32>, tensor<4x?xi32>) -> (tensor<4x?xi32>, tensor<?x4xf32>), res_attrs = [{ret.attr0}, {ret.attr1}], sym_name = "externTiedAttrs", sym_visibility = "private", tied_operands = [1 : index, 2 : index]}> ({
  }) : () -> ()
}) : () -> ()

