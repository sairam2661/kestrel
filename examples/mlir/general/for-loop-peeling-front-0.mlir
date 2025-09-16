#map = affine_map<(d0, d1)[s0] -> (s0, d0 - d1)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "fully_static_bounds"}> ({
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 17 : index}> : () -> index
    %4 = "scf.for"(%1, %3, %2, %0) ({
    ^bb0(%arg0: index, %arg1: i32):
      %5 = "affine.min"(%3, %arg0, %2) <{map = #map}> : (index, index, index) -> index
      %6 = "arith.index_cast"(%5) : (index) -> i32
      %7 = "arith.addi"(%arg1, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

