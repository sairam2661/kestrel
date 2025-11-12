"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, index) -> i32, sym_name = "mixed_control_flow_tensor"}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "arith.constant"() <{value = 8 : index}> : () -> index
    %9 = "arith.constant"() <{value = 9 : index}> : () -> index
    %10 = "arith.constant"() <{value = 10 : index}> : () -> index
    %11 = "scf.if"(%arg1) ({
    ^bb0:
      %12 = "tensor.extract"(%arg0, %0) : (tensor<5xi32>, index) -> i32
      %13 = "arith.addi"(%12, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%13) : (i32) -> ()
    }) : (i32) -> (i32)
    %14 = "scf.if"(%arg1) ({
    ^bb0:
      %15 = "tensor.extract"(%arg0, %1) : (tensor<5xi32>, index) -> i32
      %16 = "arith.addi"(%15, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%16) : (i32) -> ()
    }) : (i32) -> (i32)
    %17 = "scf.if"(%arg1) ({
    ^bb0:
      %18 = "tensor.extract"(%arg0, %2) : (tensor<5xi32>, index) -> i32
      %19 = "arith.addi"(%18, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%19) : (i32) -> ()
    }) : (i32) -> (i32)
    %20 = "scf.if"(%arg1) ({
    ^bb0:
      %21 = "tensor.extract"(%arg0, %3) : (tensor<5xi32>, index) -> i32
      %22 = "arith.addi"(%21, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%22) : (i32) -> ()
    }) : (i32) -> (i32)
    %23 = "scf.if"(%arg1) ({
    ^bb0:
      %24 = "tensor.extract"(%arg0, %4) : (tensor<5xi32>, index) -> i32
      %25 = "arith.addi"(%24, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%25) : (i32) -> ()
    }) : (i32) -> (i32)
    %26 = "scf.if"(%arg1) ({
    ^bb0:
      %27 = "tensor.extract"(%arg0, %10) : (tensor<5xi32>, index) -> i32
      %28 = "arith.addi"(%27, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%28) : (i32) -> ()
    }) : (i32) -> (i32)
    %29 = "arith.addi"(%11, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %30 = "arith.addi"(%29, %17) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %31 = "arith.addi"(%30, %20) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %32 = "arith.addi"(%31, %23) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %33 = "arith.addi"(%32, %26) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%33) : (i32) -> ()
  }) : () -> ()
}) : () -> ()