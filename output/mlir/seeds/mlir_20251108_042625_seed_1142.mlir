"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "test_complex_control_flow"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.cmpi"(%arg0, %0, "sge") : (i32, i32, i32) -> i1
      "scf.if"(%1) ({
        ^bb1(%arg2: i1):
          %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_exception}> : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) {
        "scf.yield" 	= "arith.subi"		: (i32, i32) -> i32		,
        "scf.yield" 	= "arith.muli"		: (i32, i32) -> i32		,
        "scf.yield" 	= "arith.cmpi"		: (i32, i32, i32) -> i1	,
      "scf.yield" 	= "arith.divi"		: (i32, i32) -> i32		,
      "scf.yield" 	= "arith.remi"		: (i32, i32) -> i32
      }
      : (i1, i32) -> ()
      "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()