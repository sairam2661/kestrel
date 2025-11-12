"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_add_with_region"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "scf.for"() ( {
      %iv:0 = "scf.constant"() <{value = 0 : index}> : () -> index
    }) {
      "scf.yield"  = "scf.for"  : () -> ()
    } : (index) -> ()
    %1 = "tosa.add"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "func.return"(%1) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()