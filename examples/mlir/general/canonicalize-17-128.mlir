"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> tensor<i32>, sym_name = "fold_collapse_shape_from_elements"}> ({
  ^bb0(%arg0: i32):
    %0 = "tensor.from_elements"(%arg0) : (i32) -> tensor<1xi32>
    %1 = "tensor.collapse_shape"(%0) <{reassociation = []}> : (tensor<1xi32>) -> tensor<i32>
    "func.return"(%1) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

