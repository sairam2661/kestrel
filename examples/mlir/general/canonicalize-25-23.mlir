"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>) -> tensor<4xi8>, sym_name = "disjoint_clamp_twice_is_not_single_clamp"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %0 = "tosa.clamp"(%arg0) <{max_val = -5 : i8, min_val = -10 : i8, nan_mode = "PROPAGATE"}> : (tensor<4xi8>) -> tensor<4xi8>
    %1 = "tosa.clamp"(%0) <{max_val = 5 : i8, min_val = 1 : i8, nan_mode = "PROPAGATE"}> : (tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%1) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()

