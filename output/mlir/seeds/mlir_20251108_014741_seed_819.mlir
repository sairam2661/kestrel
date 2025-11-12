"builtin.module"() ({
  "func.func"() <{function_type = (index, i32, f32) -> (i32, f32), sym_name = "mixed_types_with_loops_and_conditions"}> ({
  ^bb0(%arg0: index, %arg1: i32, %arg2: f32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c0_f32 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %c1_f32 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32

    %cmp_i32 = "arith.cmpi"(%arg1, %c1_i32, "slt") : (i32, i32) -> i1
    %scf_if_i32 = "scf.if"(%cmp_i32) ({
      %add_i32 = "arith.addi"(%arg1, %c1_i32) : (i32, i32) -> i32
      "scf.yield"(%add_i32) : (i32) -> ()
    }, {
      "scf.yield"(%c0_i32) : (i32) -> ()
    }) : (i1) -> i32

    %cmp_f32 = "arith.cmpf"(%arg2, %c1_f32, "slt") : (f32, f32) -> i1
    %scf_if_f32 = "scf.if"(%cmp_f32) ({
      %add_f32 = "arith.addf"(%arg2, %c1_f32) : (f32, f32) -> f32
      "scf.yield"(%add_f32) : (f32) -> ()
    }, {
      "scf.yield"(%c0_f32) : (f32) -> ()
    }) : (i1) -> f32

    "func.return"(%scf_if_i32, %scf_if_f32) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()