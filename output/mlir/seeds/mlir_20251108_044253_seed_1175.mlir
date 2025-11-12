"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complexOperations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%0, %1, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %0, %1) : (i1, i32, i32) -> i32
    %4 = "arith.muli"(%3, %3) : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transformany_op) -> (), sym_name = "transformSeq"}> ({
  ^bb0(%arg0: !transformany_op):
    %1 = "transform.apply_registered_pass"(%arg0) <{options = {}, pass_name = "canonicalize"}> : (!transformany_op) -> !transformany_op
    "transform.print"(%1) : (!transformany_op) -> ()
    "transform.yield"() : () -> ()
  }) : () -> ()
}) {transform.with_named_sequence} : () -> ()