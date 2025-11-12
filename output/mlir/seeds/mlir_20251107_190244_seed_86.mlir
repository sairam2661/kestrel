"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complexOpChain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
    %2 = "arith.cmpi"("slt", %1, %0) : (i32, i32) -> i1
    %3 = "transform.structured.match"(%2) <{case = #transform_case0}> ({
    ^bb0(%arg2: i1):
      "func.return"(%0, %1) : (i32, i32) -> ()
    }, {
    }) : () -> ()
    "func.return"(%0, %1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()