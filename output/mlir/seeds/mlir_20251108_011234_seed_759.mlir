"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i32, sym_name = "mixed_types_complexity"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %4 = "arith.cmpi"("slt", %2, %0) : (i32, i32) -> i1
      %5 = "scf.if"(%4) ({
      ^bb1:
        "func.return"(%0) : (i32) -> ()
      }) {
      } : (i1) -> ()
      "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()