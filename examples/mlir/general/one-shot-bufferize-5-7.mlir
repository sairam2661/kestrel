"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {bufferization.writable = false}, {bufferization.writable = false}], function_type = (i1, tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>, sym_name = "scf_if_non_equiv_yields"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<4xf32>, %arg2: tensor<4xf32>):
    %0 = "scf.if"(%arg0) ({
      "scf.yield"(%arg1) : (tensor<4xf32>) -> ()
    }, {
      "scf.yield"(%arg2) : (tensor<4xf32>) -> ()
    }) : (i1) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

