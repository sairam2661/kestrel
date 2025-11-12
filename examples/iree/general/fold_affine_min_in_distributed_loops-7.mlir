#map = affine_map<(d0, d1) -> (d0, -d1 + 32)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "affine_apply_folded_into_loop"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 32 : index}> : () -> index
    %3 = "hal.interface.workgroup.id"() <{dimension = 0 : index}> : () -> index
    %4 = "hal.interface.workgroup.count"() <{dimension = 0 : index}> : () -> index
    %5 = "scf.for"(%3, %2, %4, %0) ({
    ^bb0(%arg0: index, %arg1: index):
      %6 = "affine.min"(%1, %arg0) <{map = #map}> : (index, index) -> index
      "scf.yield"(%6) : (index) -> ()
    }) : (index, index, index, index) -> index
    "func.return"(%5) : (index) -> ()
  }) : () -> ()
}) : () -> ()

