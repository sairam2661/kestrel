"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi16>) -> i16, sym_name = "reduce_add_and_mul"}> ({
  ^bb0(%arg0: tensor<32xi16>):
    %0 = "arith.constant"() <{value = 30 : index}> : () -> index
    %1 = "arith.constant"() <{value = 29 : index}> : () -> index
    %2 = "arith.constant"() <{value = 31 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor_ext.rotate"(%arg0, %3) : (tensor<32xi16>, index) -> tensor<32xi16>
    %5 = "arith.addi"(%4, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %6 = "tensor_ext.rotate"(%arg0, %2) : (tensor<32xi16>, index) -> tensor<32xi16>
    %7 = "tensor_ext.rotate"(%5, %1) : (tensor<32xi16>, index) -> tensor<32xi16>
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %9 = "arith.addi"(%8, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %10 = "tensor_ext.rotate"(%9, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %11 = "arith.addi"(%6, %10) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %12 = "arith.addi"(%11, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %13 = "tensor_ext.rotate"(%12, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %14 = "arith.addi"(%6, %13) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %15 = "arith.addi"(%14, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %16 = "tensor_ext.rotate"(%15, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %17 = "arith.addi"(%6, %16) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %18 = "arith.addi"(%17, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %19 = "tensor_ext.rotate"(%18, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %20 = "arith.addi"(%6, %19) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %21 = "arith.addi"(%20, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %22 = "tensor_ext.rotate"(%21, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %23 = "arith.addi"(%6, %22) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %24 = "arith.addi"(%23, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %25 = "tensor_ext.rotate"(%24, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %26 = "arith.addi"(%6, %25) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %27 = "arith.addi"(%26, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %28 = "tensor_ext.rotate"(%27, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %29 = "arith.addi"(%6, %28) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %30 = "arith.addi"(%29, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %31 = "tensor_ext.rotate"(%30, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %32 = "arith.addi"(%6, %31) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %33 = "arith.addi"(%32, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %34 = "tensor_ext.rotate"(%33, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %35 = "arith.addi"(%6, %34) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %36 = "arith.addi"(%35, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %37 = "tensor_ext.rotate"(%36, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %38 = "arith.addi"(%6, %37) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %39 = "arith.addi"(%38, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %40 = "tensor_ext.rotate"(%39, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %41 = "arith.addi"(%6, %40) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %42 = "arith.addi"(%41, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %43 = "tensor_ext.rotate"(%42, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %44 = "arith.addi"(%6, %43) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %45 = "arith.addi"(%44, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %46 = "tensor_ext.rotate"(%45, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %47 = "arith.addi"(%6, %46) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %48 = "arith.addi"(%47, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %49 = "tensor_ext.rotate"(%48, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %50 = "arith.addi"(%6, %49) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %51 = "arith.addi"(%50, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %52 = "tensor.extract"(%51, %2) : (tensor<32xi16>, index) -> i16
    %53 = "tensor_ext.rotate"(%arg0, %3) : (tensor<32xi16>, index) -> tensor<32xi16>
    %54 = "arith.muli"(%53, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %55 = "tensor_ext.rotate"(%arg0, %2) : (tensor<32xi16>, index) -> tensor<32xi16>
    %56 = "tensor_ext.rotate"(%54, %1) : (tensor<32xi16>, index) -> tensor<32xi16>
    %57 = "arith.muli"(%55, %56) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %58 = "arith.muli"(%57, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %59 = "tensor_ext.rotate"(%58, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %60 = "arith.muli"(%55, %59) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %61 = "arith.muli"(%60, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %62 = "tensor_ext.rotate"(%61, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %63 = "arith.muli"(%55, %62) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %64 = "arith.muli"(%63, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %65 = "tensor_ext.rotate"(%64, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %66 = "arith.muli"(%55, %65) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %67 = "arith.muli"(%66, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %68 = "tensor_ext.rotate"(%67, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %69 = "arith.muli"(%55, %68) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %70 = "arith.muli"(%69, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %71 = "tensor_ext.rotate"(%70, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %72 = "arith.muli"(%55, %71) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %73 = "arith.muli"(%72, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %74 = "tensor_ext.rotate"(%73, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %75 = "arith.muli"(%55, %74) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %76 = "arith.muli"(%75, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %77 = "tensor_ext.rotate"(%76, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %78 = "arith.muli"(%55, %77) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %79 = "arith.muli"(%78, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %80 = "tensor_ext.rotate"(%79, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %81 = "arith.muli"(%55, %80) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %82 = "arith.muli"(%81, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %83 = "tensor_ext.rotate"(%82, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %84 = "arith.muli"(%55, %83) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %85 = "arith.muli"(%84, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %86 = "tensor_ext.rotate"(%85, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %87 = "arith.muli"(%55, %86) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %88 = "arith.muli"(%87, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %89 = "tensor_ext.rotate"(%88, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %90 = "arith.muli"(%55, %89) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %91 = "arith.muli"(%90, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %92 = "tensor_ext.rotate"(%91, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %93 = "arith.muli"(%55, %92) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %94 = "arith.muli"(%93, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %95 = "tensor_ext.rotate"(%94, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %96 = "arith.muli"(%55, %95) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %97 = "arith.muli"(%96, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %98 = "tensor_ext.rotate"(%97, %0) : (tensor<32xi16>, index) -> tensor<32xi16>
    %99 = "arith.muli"(%55, %98) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %100 = "arith.muli"(%99, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<32xi16>, tensor<32xi16>) -> tensor<32xi16>
    %101 = "tensor.extract"(%100, %2) : (tensor<32xi16>, index) -> i16
    %102 = "arith.addi"(%52, %101) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%102) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

