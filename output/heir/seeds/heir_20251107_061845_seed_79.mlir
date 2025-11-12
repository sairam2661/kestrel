"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, tensor<4xi16>, index) -> i16, sym_name = "complex_secret_tensor_op"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: tensor<4xi16>, %arg2: index):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : index}> : () -> index
    %4 = "arith.constant"() <{value = 42 : i16}> : () -> i16
    %5 = "arith.constant"() <{value = 1 : i16}> : () -> i16
    %6 = "arith.cmpi"(%arg2, %0) <{predicate = 10 : i64}> : (index, index) -> i1
    %7 = "arith.select"(%6, %5, %3) : (i1, index, index) -> index
    %8 = "secret.generic"(%arg1) ({
    ^bb0(%arg3: tensor<4xi16>):
      %9 = "tensor_ext.rotate"(%arg3, %7) : (tensor<4xi16>, index) -> tensor<4xi16>
      %10 = "arith.addi"(%9, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
      %11 = "tensor.extract"(%10, %3) : (tensor<4xi16>, index) -> i16
      "secret.yield"(%11) : (i16) -> ()
    }) : (!secretsecret, tensor<4xi16>) -> !secretsecret
    %12 = "arith.addi"(%8, %4) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    "func.return"(%12) : (i16) -> ()
  }) : () -> ()
}) : () -> ()