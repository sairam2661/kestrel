"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> (), sym_name = "arith_bitwise_bool"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "arith.andi"(%arg0, %arg1) : (i1, i1) -> i1
    %1 = "arith.ori"(%arg0, %arg1) : (i1, i1) -> i1
    %2 = "arith.xori"(%arg0, %arg1) : (i1, i1) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

