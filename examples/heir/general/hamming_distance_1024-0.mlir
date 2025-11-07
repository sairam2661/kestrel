"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<1024xi16>>, !secret.secret<tensor<1024xi16>>) -> !secret.secret<i16>, sym_name = "hamming"}> ({
  ^bb0(%arg0: !secret.secret<tensor<1024xi16>>, %arg1: !secret.secret<tensor<1024xi16>>):
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
    ^bb0(%arg2: tensor<1024xi16>, %arg3: tensor<1024xi16>):
      %12 = "arith.subi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %13 = "arith.muli"(%12, %12) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %14 = "tensor_ext.rotate"(%13, %10) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %15 = "arith.addi"(%13, %14) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %16 = "tensor_ext.rotate"(%15, %9) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %17 = "arith.addi"(%15, %16) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %18 = "tensor_ext.rotate"(%17, %8) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %19 = "arith.addi"(%17, %18) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %20 = "tensor_ext.rotate"(%19, %7) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %21 = "arith.addi"(%19, %20) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %22 = "tensor_ext.rotate"(%21, %6) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %23 = "arith.addi"(%21, %22) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %24 = "tensor_ext.rotate"(%23, %5) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %25 = "arith.addi"(%23, %24) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %26 = "tensor_ext.rotate"(%25, %4) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %27 = "arith.addi"(%25, %26) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %28 = "tensor_ext.rotate"(%27, %3) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %29 = "arith.addi"(%27, %28) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %30 = "tensor_ext.rotate"(%29, %2) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %31 = "arith.addi"(%29, %30) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %32 = "tensor_ext.rotate"(%31, %1) : (tensor<1024xi16>, index) -> tensor<1024xi16>
      %33 = "arith.addi"(%31, %32) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %34 = "tensor.extract"(%33, %0) : (tensor<1024xi16>, index) -> i16
      "secret.yield"(%34) : (i16) -> ()
    }) : (!secret.secret<tensor<1024xi16>>, !secret.secret<tensor<1024xi16>>) -> !secret.secret<i16>
    "func.return"(%11) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

