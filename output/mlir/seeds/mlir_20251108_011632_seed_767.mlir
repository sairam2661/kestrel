"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_arith_with_scf"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.addf"(%arg1, %arg1) : (i64, i64) -> i64
      "scf.if"() <{condition = true}> ({
        ^bb1(%if_arg0: i32, %if_arg1: i64):
          %2 = "arith.cmpi"("slt", %if_arg0, %arg0) : (i32, i32) -> i1
          scf.yield %2 : i1
      }) : (i1) -> () succs  .bb2  .4
      :  (i1)
      ^bb2:
        "scf.if"() <{condition = false}> ({
          ^bb3(%if_arg2: i32, %if_arg3: i64):
            %3 = "arith.cmpf"("oeq", %if_arg3, %arg1) : (i64, i64) -> i1
            scf.yield %3 : i1
        }) : (i1) -> () succs  .bb4
        :  (i1)
        ^bb4:
          "func.return"(%0, %1) : (i32, i64) -> ()
  }) : (i32, i64) -> ()
}) : () -> ()