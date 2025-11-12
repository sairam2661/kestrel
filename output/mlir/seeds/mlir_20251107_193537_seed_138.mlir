"builtin.module"() ({
  "func.func"() <{function_type = (f32, f64, i32) -> (f32, i32), sym_name = "fuzz_test"}> ({
  ^bb0(%arg0: f32, %arg1: f64, %arg2: i32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f64) -> f32
    %1 = "arith.cmpi"(%arg2, %arg2) <{"eq" = #arith_cmpop_eq}> : (i32, i32) -> i1
    %2 = "scf.if"(%1) <{sym_name = "if_region"}> ({
      ^bb1(%arg3: i1):
        %3 = "arith.addi"(%arg2, %arg2) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> i32
    }) : (i32) -> i32
    %4 = "arith.addf"(%0, %0) : (f32, f32) -> f32
    "func.return"(%4, %2) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()