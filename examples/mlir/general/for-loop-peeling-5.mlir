#map = affine_map<(d0, d1)[s0] -> (s0, d0 - d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index, index) -> i32, sym_name = "nested_loops"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "scf.for"(%arg0, %arg2, %arg4, %0) ({
    ^bb0(%arg5: index, %arg6: i32):
      %2 = "scf.for"(%arg1, %arg3, %arg4, %arg6) ({
      ^bb0(%arg7: index, %arg8: i32):
        %4 = "affine.min"(%arg3, %arg7, %arg4) <{map = #map}> : (index, index, index) -> index
        %5 = "arith.index_cast"(%4) : (index) -> i32
        %6 = "arith.addi"(%arg8, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }) : (index, index, index, i32) -> i32
      %3 = "arith.addi"(%arg6, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

