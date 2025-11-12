"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32

    %sum = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %prod = "arith.muli"(%sum, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32

    %cond = "arith.cmpi"("slt", %prod, %c3_i32) : (i32, i32) -> i1

    "scf.if"(%cond) ({
      ^bb1:
        "scf.for"(%i0) <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index}> ({
        ^bb2(%i0: index):
          %cond2 = "arith.cmpi"("slt", %i0, %c2_i32) : (index, index) -> i1
          "scf.if"(%cond2) ({
            ^bb3:
              %val = "arith.addi"(%i0, %c1_i32) <{overflowFlags = #arith_overflownone}> : (index, i32) -> i32
              "scf.yield"() : () -> ()
          }) {
            "scf.yield" 	= "scf.yield" 	: () -> ()
          } 
          : () -> ()
        "scf.yield"() : () -> ()
        }) : (index) -> ()
      "scf.yield"() : () -> ()
    }) {
      "scf.yield" 	= "scf.yield" 	: () -> ()
    } 
    : () -> ()
    "func.return"(%prod) : (i32) -> ()
  }) : () -> ()
}) : () -> ()