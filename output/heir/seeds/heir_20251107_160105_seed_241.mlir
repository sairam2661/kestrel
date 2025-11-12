"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecrettensor1024xi8, !secretsecrettensor1024xi8) -> !secretsecreti16, sym_name = "complex_rotations"}> ({
  ^bb0(%arg0: !secretsecrettensor1024xi8, %arg1: !secretsecrettensor1024xi8):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 8 : index}> : () -> index
    %5 = "arith.constant"() <{value = 16 : index}> : () -> index
    %6 = "arith.constant"() <{value = 32 : index}> : () -> index
    %7 = "arith.constant"() <{value = 64 : index}> : () -> index
    %8 = "arith.constant"() <{value = 128 : index}> : () -> index
    %9 = "arith.constant"() <{value = 256 : index}> : () -> index
    %10 = "arith.constant"() <{value = 512 : index}> : () -> index
    %11 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<1024xi8>, %arg3: tensor<1024xi8>):
      %12 = "arith.subi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %13 = "arith.muli"(%12, %12) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %14 = "tensor_ext.rotate"(%13, %10) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %15 = "arith.addi"(%13, %14) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %16 = "tensor_ext.rotate"(%15, %9) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %17 = "arith.addi"(%15, %16) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %18 = "tensor_ext.rotate"(%17, %8) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %19 = "arith.addi"(%17, %18) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %20 = "tensor_ext.rotate"(%19, %7) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %21 = "arith.addi"(%19, %20) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %22 = "tensor_ext.rotate"(%21, %6) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %23 = "arith.addi"(%21, %22) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %24 = "tensor_ext.rotate"(%23, %5) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %25 = "arith.addi"(%23, %24) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %26 = "tensor_ext.rotate"(%25, %4) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %27 = "arith.addi"(%25, %26) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %28 = "tensor_ext.rotate"(%27, %3) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %29 = "arith.addi"(%27, %28) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %30 = "tensor_ext.rotate"(%29, %2) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %31 = "arith.addi"(%29, %30) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %32 = "tensor_ext.rotate"(%31, %1) : (tensor<1024xi8>, index) -> tensor<1024xi8>
      %33 = "arith.addi"(%31, %32) <{overflowFlags = #arithoverflownone}> : (tensor<1024xi8>, tensor<1024xi8>) -> tensor<1024xi8>
      %34 = "tensor.extract"(%33, %0) : (tensor<1024xi8>, index) -> i8
      "secret.yield"(%34) : (i8) -> ()
    }) : (!secretsecrettensor1024xi8, !secretsecrettensor1024xi8) -> !secretsecreti16
    "func.return"(%11) : (!secretsecreti16) -> ()
  }) : () -> ()
}) : () -> ()