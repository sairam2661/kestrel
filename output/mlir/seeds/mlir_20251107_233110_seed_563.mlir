"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "process_data"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<2x3xi8>):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.cmpi"(%arg0, %0, "eq") : (i32, i32) -> i1
      "scf.if"(%1) ({
        %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowModes}> : (i32, i32) -> i32
        %3 = "arith.constant"() <{value = 1 : i8}> : () -> i8
        %4 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflowModes}> : (i32, i8) -> i32
        "scf.yield"() : () -> ()
      }, {
        %5 = "arith.constant"() <{value = 2 : i8}> : () -> i8
        %6 = "arith.addi"(%arg0, %5) <{overflowFlags = #arith_overflowModes}> : (i32, i8) -> i32
        "scf.yield"() : () -> ()
      }) : () -> ()
      "func.return"(%arg1) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()