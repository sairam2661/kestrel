"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3x3xi8>, tensor<3x3x3xi8>) -> tensor<3x3x3xi8>, sym_name = "min_max_combine"}> ({
  ^bb0(%arg0: tensor<3x3x3xi8>, %arg1: tensor<3x3x3xi8>):
    %2 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<3x3x3xi8>, tensor<3x3x3xi8>) -> tensor<3x3x3xi1>
    %3 = "arith.select"(%2, %arg0, %arg1) : (tensor<3x3x3xi1>, tensor<3x3x3xi8>, tensor<3x3x3xi8>) -> tensor<3x3x3xi8>
    %4 = "arith.cmpi"(%arg0, %arg1, "sgt") : (tensor<3x3x3xi8>, tensor<3x3x3xi8>) -> tensor<3x3x3xi1>
    %5 = "arith.select"(%4, %arg0, %arg1) : (tensor<3x3x3xi1>, tensor<3x3x3xi8>, tensor<3x3x3xi8>) -> tensor<3x3x3xi8>
    "func.return"(%5) : (tensor<3x3x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()