"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x3xi16>) -> i32, sym_name = "complexOpSequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x3xi16>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "tosa.const"() <{value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]}> : () -> tensor<4x3xi16>
    %3 = "arith.addi"(%arg1, %2) : (tensor<4x3xi16>, tensor<4x3xi16>) -> tensor<4x3xi16>
    %4 = "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 5 : i32, step = 1 : i32}> ({
    ^bb1(%i: i32):
      %5 = "arith.addi"(%i, %1) : (i32, i32) -> i32
      %6 = "scf.yield"(%5) : (i32) -> (i32)
    }) : (i32) -> (i32)
    %7 = "arith.cmpi"(%4, %1) <{predicate = "slt"}> : (i32, i32) -> i1
    %8 = "scf.cond_br"(%7) <{true = "^bb2", false = "^bb3"}> : (i1)
  ^bb2:
    "func.return"(%0) : (i32) -> ()
  ^bb3:
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()