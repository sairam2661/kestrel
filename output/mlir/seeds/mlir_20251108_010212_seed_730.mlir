"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpi"("eq", %0, %0) : (i32, i32) -> i1
    %3 = "arith.cmpf"("oeq", %1, %1) : (f32, f32) -> i1
    %4 = "scf.if"(%2) ({
      ^bb1(%arg2: i1):
        %5 = "arith.addi"(%0, %0) : (i32, i32) -> i32
        %6 = "arith.addf"(%1, %1) : (f32, f32) -> f32
        "scf.yield"(%5, %6) : (i32, f32) -> (i32, f32)
    }) : (i1) -> (i32, f32)
    %7 = "arith.muli"(%4#0, %4#0) : (i32, i32) -> i32
    %8 = "arith.mulf"(%4#1, %4#1) : (f32, f32) -> f32
    "func.return"(%7, %8) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()