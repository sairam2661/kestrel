"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x3xi32>) -> (i32), sym_name = "mixed_arith_tosa"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x3xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%arg0, %1, "slt") : (i32, i32) -> i1
    "scf.if"(%2) ({
    ^bb1:
      %3 = "arith.constant"() <{value = 100 : index}> : () -> index
      %4 = "tosa.arithmetic_right_shift"(%arg1, %3) <{round = false}> : (tensor<4x3xi32>, index) -> tensor<4x3xi32>
      "func.return"(%4) : (tensor<4x3xi32>) -> ()
    }) {
    } : (i1) -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> (i32)
}) : () -> ()