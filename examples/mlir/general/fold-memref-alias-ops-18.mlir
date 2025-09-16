#map = affine_map<(d0, d1) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x6x32xf32>, index, index) -> f32, sym_name = "fold_static_stride_subview_with_affine_load_store_collapse_shape"}> ({
  ^bb0(%arg0: memref<2x6x32xf32>, %arg1: index, %arg2: index):
    %0 = "memref.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2]]}> : (memref<2x6x32xf32>) -> memref<12x32xf32>
    %1 = "affine.load"(%0, %arg1, %arg2) <{map = #map}> : (memref<12x32xf32>, index, index) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

