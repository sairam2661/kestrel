"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complexOpSequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg1) <{predicate = "sgt"}> : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
    ^bb1(%arg2: i1):
      %4 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> ()
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()