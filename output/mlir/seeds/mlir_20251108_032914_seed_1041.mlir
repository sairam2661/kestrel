"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>, sym_name = "compare_tensors"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>
    "func.return"(%0) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>, sym_name = "compare_tensors_ne"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>
    "func.return"(%0) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>, sym_name = "compare_tensors_lt"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.cmpi"(%arg0, %arg1, "lt") : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>
    "func.return"(%0) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>, sym_name = "compare_tensors_gt"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.cmpi"(%arg0, %arg1, "gt") : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>
    "func.return"(%0) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>, sym_name = "compare_tensors_le"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.cmpi"(%arg0, %arg1, "le") : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>
    "func.return"(%0) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>, sym_name = "compare_tensors_ge"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.cmpi"(%arg0, %arg1, "ge") : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>
    "func.return"(%0) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()