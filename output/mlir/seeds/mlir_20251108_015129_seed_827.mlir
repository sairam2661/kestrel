#map = affine_map<(d0, d1)[s0] -> (s0, d0 - d1)>
#set = affine_map<(d0)[s0, s1] -> (1, s0, s1)>

"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 5 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "scf.for"(%0, %1, %1, %arg0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %4 = "arith.cmpi"(%arg2, %1, "slt") : (index, index) -> i1
      "scf.if"(%4) ({
      ^bb0:
        %5 = "arith.addi"(%arg3, %2) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }) {
      } : (i1) -> i32
    }) : (index, index, i32) -> i32
    %6 = "arith.constant"() <{value = 0 : index}> : () -> index
    %7 = "arith.constant"() <{value = 3 : index}> : () -> index
    %8 = "scf.for"(%6, %7, %7, %arg1) ({
    ^bb0(%arg4: index, %arg5: i32):
      %9 = "arith.addi"(%arg5, %arg3) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) : (index, index, i32) -> i32
    "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()