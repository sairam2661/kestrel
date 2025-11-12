#map = affine_map<(d0, d1) -> (d0 + d1)>
#set = affine_map<(d0, d1) -> (d0, d1)>

"builtin.module"() ({
  "func.func"() <{function_type = (i32, index) -> i32, sym_name = "complex_nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "scf.for"(%1, %2, %arg1, %0) ({
    ^bb1(%arg2: index, %arg3: i32):
      %4 = "scf.if"(%arg2) ({
      ^bb2:
        %5 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflow_none}> : (i32, index) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }) {
      } : i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()