"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<32xi16>>) -> !secret.secret<i16>, sym_name = "sum_of_linear_rotates"}> ({
  ^bb0(%arg0: !secret.secret<tensor<32xi16>>):
    %0 = "arith.constant"() <{value = 30 : index}> : () -> index
    %1 = "arith.constant"() <{value = 29 : index}> : () -> index
    %2 = "arith.constant"() <{value = 31 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: tensor<32xi16>):
      %5 = "tensor_ext.rotate"(%arg1, %3) : (tensor<32xi16>, index) -> tensor<32xi16>
      %6 = "arith.addi"(%5, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %7 = "tensor_ext.rotate"(%arg1, %2) : (tensor<32xi16>, index) -> tensor<32xi16>
      %8 = "tensor_ext.rotate"(%6, %1) : (tensor<32xi16>, index) -> tensor<32xi16>
      %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %10 = "arith.addi"(%9, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %11 = "tensor_ext.rotate"(%10, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %12 = "arith.addi"(%7, %11) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %13 = "arith.addi"(%12, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %14 = "tensor_ext.rotate"(%13, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %15 = "arith.addi"(%7, %14) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %16 = "arith.addi"(%15, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %17 = "tensor_ext.rotate"(%16, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %18 = "arith.addi"(%7, %17) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %19 = "arith.addi"(%18, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %20 = "tensor_ext.rotate"(%19, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %21 = "arith.addi"(%7, %20) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %22 = "arith.addi"(%21, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %23 = "tensor_ext.rotate"(%22, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %24 = "arith.addi"(%7, %23) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %25 = "arith.addi"(%24, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %26 = "tensor_ext.rotate"(%25, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %27 = "arith.addi"(%7, %26) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %28 = "arith.addi"(%27, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %29 = "tensor_ext.rotate"(%28, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %30 = "arith.addi"(%7, %29) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %31 = "arith.addi"(%30, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %32 = "tensor_ext.rotate"(%31, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %33 = "arith.addi"(%7, %32) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %34 = "arith.addi"(%33, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %35 = "tensor_ext.rotate"(%34, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %36 = "arith.addi"(%7, %35) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %37 = "arith.addi"(%36, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %38 = "tensor_ext.rotate"(%37, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %39 = "arith.addi"(%7, %38) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %40 = "arith.addi"(%39, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %41 = "tensor_ext.rotate"(%40, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %42 = "arith.addi"(%7, %41) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %43 = "arith.addi"(%42, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %44 = "tensor_ext.rotate"(%43, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %45 = "arith.addi"(%7, %44) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %46 = "arith.addi"(%45, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %47 = "tensor_ext.rotate"(%46, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %48 = "arith.addi"(%7, %47) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %49 = "arith.addi"(%48, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %50 = "tensor_ext.rotate"(%49, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
      %51 = "arith.addi"(%7, %50) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %52 = "arith.addi"(%51, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
      %53 = "tensor.extract"(%52, %2) : (tensor<32xi16>, index) -> i16
      "secret.yield"(%53) : (i16) -> ()
    }) : (!secret.secret<tensor<32xi16>>) -> !secret.secret<i16>
    "func.return"(%4) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

