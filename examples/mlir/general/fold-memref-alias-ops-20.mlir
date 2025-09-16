#map = affine_map<(d0, d1) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?x?xf32>, index, index) -> f32, sym_name = "fold_fully_dynamic_size_collapse_shape_with_affine_load"}> ({
  ^bb0(%arg0: memref<?x?x?xf32>, %arg1: index, %arg2: index):
    %0 = "memref.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2]]}> : (memref<?x?x?xf32>) -> memref<?x?xf32>
    %1 = "affine.load"(%0, %arg1, %arg2) <{map = #map}> : (memref<?x?xf32>, index, index) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

