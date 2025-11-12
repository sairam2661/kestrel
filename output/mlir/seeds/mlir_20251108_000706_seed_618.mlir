"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %cst0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %cst1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %cst2 = "arith.constant"() <{value = 5.0 : f32}> : () -> f32
      %cst3 = "arith.constant"() <{value = 3.0 : f32}> : () -> f32

      %add_i32 = "arith.addi"(%arg0, %cst0) : (i32, i32) -> i32
      %add_f32 = "arith.addf"(%arg1, %cst2) : (f32, f32) -> f32

      %cmp = "arith.cmpf"("oeq", %add_f32, %cst3) : (f32, f32) -> i1

      %scf_if = "scf.if"(%cmp) ({
        %add_if = "arith.addi"(%add_i32, %cst1) : (i32, i32) -> i32
        "scf.yield"(%add_if, %add_f32) : (i32, f32) -> ()
      }, {
        %add_else = "arith.addi"(%add_i32, %cst0) : (i32, i32) -> i32
        "scf.yield"(%add_else, %add_f32) : (i32, f32) -> ()
      }) : (i1) -> (i32, f32)

      "func.return"(%scf_if#0, %scf_if#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()