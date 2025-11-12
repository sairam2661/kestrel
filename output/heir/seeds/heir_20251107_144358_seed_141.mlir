"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, i32) -> tensor<8xi32>, sym_name = "process_tensor"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0, "eq") : (i32, i32) -> i1
    "scf.if"(%1) ({
    ^bb1:
      %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %3 = "arith.addi"(%arg1, %2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %4 = "func.call"(%arg0, %3) <{callee = @update_tensor}> : (tensor<8xi32>, i32) -> tensor<8xi32>
      "scf.yield"(%4) : (tensor<8xi32>) -> ()
    }) {
    } : (i1) -> tensor<8xi32>
    "scf.for"(%arg1, %arg1, %0) ({
    ^bb2(%iv: i32):
      %5 = "arith.addi"(%iv, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %6 = "tensor.insert"(%5, %arg0, %iv) <{overflowFlags = #arithoverflownone}> : (i32, tensor<8xi32>, index) -> tensor<8xi32>
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    "func.return"(%arg0) : (tensor<8xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<8xi32>, i32) -> tensor<8xi32>, sym_name = "update_tensor"}> ({
  ^bb0(%arg2: tensor<8xi32>, %arg3: i32):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "tensor.insert"(%0, %arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%1) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()