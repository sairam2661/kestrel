"builtin.module"() ({
  "func.func"() <{function_type = (i1, tensor<5xf32>) -> (tensor<5xf32>, tensor<5xf32>), sym_name = "cse_multiple_regions"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<5xf32>):
    %0 = "scf.if"(%arg0) ({
      %3 = "tensor.empty"() : () -> tensor<5xf32>
      "scf.yield"(%3) : (tensor<5xf32>) -> ()
    }, {
      "scf.yield"(%arg1) : (tensor<5xf32>) -> ()
    }) : (i1) -> tensor<5xf32>
    %1 = "scf.if"(%arg0) ({
      %2 = "tensor.empty"() : () -> tensor<5xf32>
      "scf.yield"(%2) : (tensor<5xf32>) -> ()
    }, {
      "scf.yield"(%arg1) : (tensor<5xf32>) -> ()
    }) : (i1) -> tensor<5xf32>
    "func.return"(%0, %1) : (tensor<5xf32>, tensor<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

