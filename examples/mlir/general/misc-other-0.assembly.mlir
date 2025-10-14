module {
  func.func @func_with_assert(%arg0: index, %arg1: index) {
    %0 = arith.cmpi slt, %arg0, %arg1 : index
    cf.assert %0, "%arg0 must be less than %arg1"
    return
  }
  func.func @func_with_assume_alignment(%arg0: memref<128xi8>) {
    %assume_align = memref.assume_alignment %arg0, 64 : memref<128xi8>
    return
  }
}

