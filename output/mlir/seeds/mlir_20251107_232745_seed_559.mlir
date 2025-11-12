"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, index) -> tensor<3xi8>, sym_name = "unusual_tensor_math"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: index):
    %0 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %1 = "arith.addi"(%arg0, %0) : (tensor<3xi8>, i8) -> tensor<3xi8>
    %2 = "scf.if"(%arg1) <{true_branch = 1, false_branch = 2}> ({
    ^bb1:
      %3 = "arith.cmpi"(%arg1, %arg1) <{predicate = "eq"}> : (index, index) -> i1
      "scf.yield"(%3) : (i1) -> i1
    ^bb2:
      %4 = "arith.addi"(%arg0, %1) : (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>
      "scf.yield"(%4) : (tensor<3xi8>) -> tensor<3xi8>
    }) : (tensor<3xi8>)

    "func.return"(%2) : (tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()