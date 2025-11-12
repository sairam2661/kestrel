"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "test_mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %arg0) : (i1, i32, i32) -> i32
    %3 = "arith.muli"(%2, %2) : (i32, i32) -> i32
    "scf.if"(%1) <{result_types = [i32, i32]}> ({
    ^bb1(%arg2: i32):
      %4 = "arith.addi"(%arg2, %3) : (i32, i32) -> i32
      "scf.yield"(%4, %3) : (i32, i32) -> ()
    }) {
    } : () -> (i32, i32)
    "func.return"(%3, %2) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()