#map = affine_map<(d0) -> (d0)>
"builtin.module"() ({
  %0 = "test.foo"() : () -> index
  "test.func"() ({
  ^bb0(%arg0: memref<?xf32>):
    %1 = "affine.load"(%arg0, %0) <{map = #map}> : (memref<?xf32>, index) -> f32
    "terminate"() : () -> ()
  }) : () -> ()
}) : () -> ()

