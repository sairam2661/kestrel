"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_modify_with_control_flow"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.cmplt"(%arg1, %2) : (i32, i32) -> i1
    "scf.if"(%3) ({
    ^bb0:
      %4 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith_overflow_flags}> : (tensor<4xi32>, i32) -> tensor<4xi32>
      "scf.yield"() : () -> ()
    }) {
    } : () -> ()
    "func.return"(%arg0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()