"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_control_flow"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.if"(%0) ({
        ^bb1(%arg0: i32):
          %1 = "scf.for"(%arg0 : i32) ({
            ^bb2(%iv: i32):
              %2 = "arith.addi"(%iv, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
              "scf.yield"(%2) : (i32) -> ()
          }) : (i32) -> (i32)
          "scf.yield"(%1) : (i32) -> ()
      }) {
        "scf.yield" 	= 	"arith.constant" 	: 	() 	-> 	i32
      } : (i32) -> i32
      "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()