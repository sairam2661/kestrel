"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {}, {}, {}], function_type = (!secretsecret, tensor<2xi32>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi64>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: tensor<2xi32>, %arg2: tensor<2xi32>, %arg3: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %2 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i1):
      %3 = "tensor.extract"(%arg1, %0) : (tensor<2xi1>, i32) -> i1
      %4 = "arith.cmpi"(%3, %arg2) <{predicate = "eq"}> : (i1, tensor<2xi32>) -> tensor<2xi1>
      %5 = "tensor.extract"(%4, %1) : (tensor<2xi1>, i32) -> i1
      "secret.yield"(%5) : (i1) -> ()
    }) : (!secretsecret) -> !secretsecret
    %6 = "arith.mulf"(%arg1, %arg2) <{fastmath = #arithfastmathnone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %7 = "arith.addf"(%arg2, %arg3) <{fastmath = #arithfastmathnone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %8 = "arith.mulf"(%6, %7) <{fastmath = #arithfastmathnone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %9 = "arith.addf"(%8, %arg1) <{fastmath = #arithfastmathnone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%9) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()