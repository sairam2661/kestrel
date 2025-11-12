#map = affine_map<()[s0] -> (s0 * 32)>
#map1 = affine_map<(d0) -> (32, -d0 + 32)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "cst_folded_into_affine_map"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 32 : index}> : () -> index
    %2 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %3 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %4 = "affine.apply"(%2) <{map = #map}> : (index) -> index
    %5 = "affine.apply"(%3) <{map = #map}> : (index) -> index
    %6 = "scf.for"(%4, %1, %5, %0) ({
    ^bb0(%arg0: index, %arg1: index):
      %7 = "affine.min"(%arg0) <{map = #map1}> : (index) -> index
      "scf.yield"(%7) : (index) -> ()
    }) : (index, index, index, index) -> index
    "func.return"(%6) : (index) -> ()
  }) : () -> ()
}) : () -> ()

