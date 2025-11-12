"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {}], function_type = (tensor<16xi8>, tensor<16xi8>) -> i8, sym_name = "complex_dot_product"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 16 : index}> : () -> index
    %3 = "secret.generic"(%arg0, %arg1) ({
    ^bb1(%arg2: tensor<16xi8>, %arg3: tensor<16xi8>):
      %4 = "arith.constant"() <{value = 0 : i8}> : () -> i8
      %5 = "scf.for"(%0, %2, %1, %4) ({
      ^bb2(%arg4: index, %arg5: i8):
        %6 = "tensor.extract"(%arg2, %arg4) : (tensor<16xi8>, index) -> i8
        %7 = "tensor.extract"(%arg3, %arg4) : (tensor<16xi8>, index) -> i8
        %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflowless}> : (i8, i8) -> i8
        %9 = "arith.addi"(%arg5, %8) <{overflowFlags = #arith_overflowless}> : (i8, i8) -> i8
        "scf.yield"(%9) : (i8) -> ()
      }) : (index, index, index, i8) -> i8
      "secret.yield"(%5) : (i8) -> ()
    }) : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%3) : (i8) -> ()
  }) : () -> ()
}) : () -> ()