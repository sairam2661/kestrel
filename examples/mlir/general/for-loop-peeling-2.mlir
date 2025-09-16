#map = affine_map<(d0, d1)[s0] -> (s0, d0 - d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> i32, sym_name = "dynamic_upper_bound"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "scf.for"(%1, %arg0, %2, %0) ({
    ^bb0(%arg1: index, %arg2: i32):
      %4 = "affine.min"(%arg0, %arg1, %2) <{map = #map}> : (index, index, index) -> index
      %5 = "arith.index_cast"(%4) : (index) -> i32
      %6 = "arith.addi"(%arg2, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

