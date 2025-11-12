"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "test_compare_and_select"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
      %1 = "arith.select"(%0, %arg0, %arg1) : (i1, i32, i32) -> i32
      %2 = "arith.cmpf"(%arg0, %arg1, "OLT") : (i32, i32) -> i1
      %3 = "arith.select"(%2, %arg1, %arg0) : (i1, i32, i32) -> i32
      "func.return"(%1, %3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()