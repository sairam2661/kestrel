#map = affine_map<(d0)[s0] -> (d0 + s0)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "fold_add_into_map"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith.overflow<nsw>}> : (index, index) -> index
    %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith.overflow<nsw, nuw>}> : (index, index) -> index
    %4 = "affine.apply"(%2, %3) <{map = #map}> : (index, index) -> index
    "func.return"(%4) : (index) -> ()
  }) : () -> ()
}) : () -> ()

