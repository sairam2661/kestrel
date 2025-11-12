"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "unusual_combinations"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %cmp = "arith.cmpi"("slt", %arg0, %arg1) : (i32, i32) -> i1
      scf.if %cmp : () -> ()  "if_region" () {
        "arith.addi"  = "arith.addi"  : () -> i32
        }  : (i32, i32) -> i32
        else  .block  : () -> ()  "else_region" () {
          "arith.addf"  = "arith.addf"  : () -> f32
        }
        : (f32, f32) -> f32
        %res = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        "func.return"(%res) : (i32) -> ()
    }) : () -> (i32)
}) : () -> ()