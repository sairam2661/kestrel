"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_loops_and_conditions"}> ({
    ^bb0(%arg0: i32):
      %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.for"(%1, %arg0) <{step = 1 : i32}> ({
        ^bb1(%iv: i32):
          %2 = "arith.cmpi"("slt", %iv, %arg0) : (i32, i32) -> i1
          "scf.if"(%2) <{operands = 1}> ({
            ^bb2:
              %3 = "arith.addi"(%iv, %iv) : (i32, i32) -> i32
              "scf.yield"() : () -> ()
          }) {
            "scf.yield" 	= "scf.yield" 	: () -> ()
          }
          : () -> ()
      }) : (i32) -> ()
      "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()