"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %arg0) <{predicate = "sgt"}> : (i32, i32) -> i1
      %2 = "scf.if"(%1) ({
        ^bb1(%if_cond: i1):
          %3 = "arith.addi"(%arg1, %arg1) : (i32, i32) -> i32
          "scf.yield"(%3) : (i32) -> ()
      }, {
        ^bb2(%if_cond: i1):
          %4 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
          "scf.yield"(%4) : (i32) -> ()
      }) : (i1) -> i32
      "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()