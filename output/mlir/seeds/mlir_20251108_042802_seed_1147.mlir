"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, f32), sym_name = "mixed_types_nested_loop"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %2:2 = "scf.for"(%arg0, %1, %0) ({
      ^bb1(%iv: i32, %iv1: i64):
        %3 = "arith.addi"(%iv, %iv1) : (i32, i64) -> i32
        %4 = "arith.sitofp"(%iv) : (i32) -> f32
        %5:2 = "scf.if"(%iv) ({
          ^bb2(%cond: i32):
            %6 = "arith.addf"(%4, %4) : (f32, f32) -> f32
            "scf.yield"(%6, %3) : (f32, i32) -> ()
        }, {
          ^bb3(%cond: i32):
            %7 = "arith.subf"(%4, %4) : (f32, f32) -> f32
            "scf.yield"(%7, %3) : (f32, i32) -> ()
        }) : (i32) -> (f32, i32)
        "scf.yield"(%5#0, %5#1) : (f32, i32) -> ()
      }) : (i32, i64, i32, i64) -> (f32, i32)
    "func.return"(%2#0, %2#1) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()