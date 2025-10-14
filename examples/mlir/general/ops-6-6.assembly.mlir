module {
  %0 = "test.foo"() : () -> index
  "test.func"() ({
  ^bb0(%arg0: memref<?xf32>):
    %1 = affine.load %arg0[%0] : memref<?xf32>
    "terminate"() : () -> ()
  }) : () -> ()
}

