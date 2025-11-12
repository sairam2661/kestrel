#map = affine_map<()[s0] -> (s0 * 32)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "workgroup_tile_loop"}> ({
    %0 = "arith.constant"() <{value = 2048 : index}> : () -> index
    %1 = "hal.interface.workgroup.id"() <{dimension = 0 : index, upper_bound = 64 : index}> : () -> index
    %2 = "arith.constant"() <{value = 64 : index}> : () -> index
    %3 = "affine.apply"(%1) <{map = #map}> : (index) -> index
    %4 = "affine.apply"(%2) <{map = #map}> : (index) -> index
    "scf.for"(%3, %0, %4) ({
    ^bb0(%arg0: index):
      "gpu.barrier"() : () -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

