"builtin.module"() ({
  "util.func"() <{function_type = (index, tensor<1xf32>) -> (), sym_name = "scfForExpansion", sym_visibility = "public"}> ({
  ^bb0(%arg0: index, %arg1: tensor<1xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "scf.for"(%0, %arg0, %1, %arg1) ({
    ^bb0(%arg2: index, %arg3: tensor<1xf32>):
      "scf.yield"(%arg3) : (tensor<1xf32>) -> ()
    }) : (index, index, index, tensor<1xf32>) -> tensor<1xf32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

