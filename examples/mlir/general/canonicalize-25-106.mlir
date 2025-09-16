"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x600x1200xi32>, sym_name = "do_not_fold_reciprocal_int", sym_visibility = "nested"}> ({
    %0 = "tosa.const"() <{values = dense<11> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.cast"(%0) : (tensor<i32>) -> tensor<3x600x1200xi32>
    %2 = "tosa.reciprocal"(%1) : (tensor<3x600x1200xi32>) -> tensor<3x600x1200xi32>
    "func.return"(%2) : (tensor<3x600x1200xi32>) -> ()
  }) : () -> ()
}) : () -> ()

