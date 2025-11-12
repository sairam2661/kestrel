"builtin.module"() ({
  "func.func"() <{function_type = (i8, i8) -> i16, sym_name = "combine_and_compare"}> ({
  ^bb0(%arg0: i8, %arg1: i8):
    %0 = "arith.addi"(%arg0, %arg1) : (i8, i8) -> i8
    %1 = "arith.constant"() <{value = 127 : i8}> : () -> i8
    %2 = "arith.cmpf"("slt", %0, %1) : (i8, i8) -> i1
    "func.return"(%2) : (i1) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transformany_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transformany_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["arith.addi"]}> : (!transformany_op) -> !transformany_op
      %1 = "transform.structured.match"(%arg0) <{ops = ["arith.cmpf"]}> : (!transformany_op) -> !transformany_op
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()