"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_types_function"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addi"(%arg1, %arg1) : (i64, i64) -> i64
    "scf.if"(%0) ({
    ^bb1(%arg2: i32):
      %2 = "arith.addf"(%arg2, %arg2) : (i32, i32) -> f32
      "scf.yield"(%2) : (f32) -> ()
    }, {
    ^bb2(%arg3: i32):
      %3 = "arith.cmpi"("sle", %arg3, %arg3) : (i32, i32) -> i1
      "scf.yield"(%3) : (i1) -> ()
    }) {else_branch = 1 : i64} : (i32) -> (f32, i1)
    "func.return"(%0, %1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()