"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, f64), sym_name = "mixed_types_and_branches"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (i64, i64) -> f64
    %2 = "arith.cmpf"("eq", %1, %1) : (f64, f64) -> i1
    "scf.if"(%2) ({
      ^bb1(%arg2: i1):
        %3 = "arith.addi"(%0, %0) : (i32, i32) -> i32
        "scf.yield"(%3, %1) : (i32, f64) -> (i32, f64)
    }) : (i1) -> (i32, f64) else 	.block0 	: 	() -> (i32, f64) 	^bb2:
      %4 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %5 = "arith.addf"(%arg1, %arg1) : (i64, i64) -> f64
      "scf.yield"(%4, %5) : (i32, f64) -> (i32, f64)
    "func.return"(%0, %1) : (i32, f64) -> ()
  }) : () -> ()
}) : () -> ()