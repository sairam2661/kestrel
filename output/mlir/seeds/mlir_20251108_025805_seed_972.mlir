"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, i32) -> tensor<2x3xi32>, sym_name = "dynamic_shift_and_sum"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 12: i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"("slt", %1, %0) : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
    ^bb0(%arg2: i32):
      %4 = "arith.addi"(%arg1, %arg2) : (i32, i1) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
    ^bb0:
      %5 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32, i1) -> i32
    %6 = "arith.addi"(%arg0, %3) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    "func.return"(%6) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()