"builtin.module"() ({
  "func.func"() <{function_type = (tensor<6xi8>, tensor<512xi8>) -> (), sym_name = "table8"}> ({
  ^bb0(%arg0: tensor<6xi8>, %arg1: tensor<512xi8>):
    %0 = "tosa.table"(%arg0, %arg1) : (tensor<6xi8>, tensor<512xi8>) -> tensor<6xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

