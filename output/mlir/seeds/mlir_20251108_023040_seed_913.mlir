"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arith_ops"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %const_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %const_f32 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %add_i32 = "arith.addi"(%arg0, %const_i32) : (i32, i32) -> i32
    %add_f32 = "arith.addf"(%arg1, %const_f32) : (f32, f32) -> f32
    %cmp = "arith.cmpf"(%add_f32, %const_f32) <{predicate = "oeq"}> : (f32, f32) -> i1
    %scf_if = "scf.if"(%cmp) ({
      %const_i32_2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %add_i32_2 = "arith.addi"(%add_i32, %const_i32_2) : (i32, i32) -> i32
      "scf.yield"(%add_i32_2, %add_f32) : (i32, f32) -> ()
    }) {
      "scf.yield" = "scf.yield" : () -> (i32, f32)
    }
    : (i1) -> (i32, f32)
    "func.return"(%scf_if#0, %scf_if#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()