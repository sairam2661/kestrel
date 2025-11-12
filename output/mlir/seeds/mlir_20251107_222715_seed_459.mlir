"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %cmpi = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %scf_if = "scf.if"(%cmpi) ({
    ^bb1(%arg2: i32):
      %addi = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
      %scf_yield = "scf.yield"(%addi) : (i32) -> ()
    }, {
    ^bb2(%arg3: i32):
      %subi = "arith.addi"(%arg1, %c2_i32) : (i32, i32) -> i32
      %scf_yield = "scf.yield"(%subi) : (i32) -> ()
    }) : (i32) -> (i32)
    %func_return = "func.return"(%scf_if) : (i32) -> ()
  }) : () -> (i32)
}) : () -> ()