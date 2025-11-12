"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_add_with_conditional_mod"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c10 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %c20 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %0 = "tensor.extract"(%arg0, %c0) : (tensor<4xi32>, index) -> i32
    %1 = "tensor.extract"(%arg0, %c1) : (tensor<4xi32>, index) -> i32
    %2 = "tensor.extract"(%arg0, %c2) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %c3) : (tensor<4xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %c0) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %c1) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg1, %c2) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg1, %c3) : (tensor<4xi32>, index) -> i32
    %8 = "arith.addi"(%0, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.addi"(%1, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%2, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.addi"(%3, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "arith.cmpi"(%8, %c10) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %13 = "arith.cmpi"(%9, %c10) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %14 = "arith.cmpi"(%10, %c10) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %15 = "arith.cmpi"(%11, %c10) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %16 = "scf.if"(%12) ({
    ^bb0:
      %17 = "arith.muli"(%8, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%17) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %18 = "scf.if"(%13) ({
    ^bb0:
      %19 = "arith.muli"(%9, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%19) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %20 = "scf.if"(%14) ({
    ^bb0:
      %21 = "arith.muli"(%10, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%21) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %22 = "scf.if"(%15) ({
    ^bb0:
      %23 = "arith.muli"(%11, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%23) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %24 = "tensor.insert"(%16, %arg0, %c0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %25 = "tensor.insert"(%18, %24, %c1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %26 = "tensor.insert"(%20, %25, %c2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %27 = "tensor.insert"(%22, %26, %c3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%27) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()