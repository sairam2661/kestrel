"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_add_cmp"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32

    %add0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %cmp0 = "arith.cmpi"("sge", %add0, %c0_i32) : (i32, i32) -> i1
    %cmp1 = "arith.cmpi"("slt", %add0, %c2_i32) : (i32, i32) -> i1

    "scf.if"(%cmp0) ({
      %add1 = "arith.addi"(%add0, %c0_i32) : (i32, i32) -> i32
      "scf.yield"(%add1) : (i32)
    }) {
      "scf.if" 		= "scf.if" 			: i1
      } 	: (i32) -> (i32) 

    "scf.if"(%cmp1) ({
      %add2 = "arith.addi"(%add0, %c1_i32) : (i32, i32) -> i32
      "scf.yield"(%add2) : (i32)
    }) {
      "scf.if" 	= "scf.if" 			: i1
      } 	: (i32) -> (i32)

    "func.return"(%add0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()