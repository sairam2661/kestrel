module {
  func.func @fold_view_same_source_result_types(%arg0: memref<128xi8>) -> memref<128xi8> {
    %c0 = arith.constant 0 : index
    %view = memref.view %arg0[%c0][] : memref<128xi8> to memref<128xi8>
    return %view : memref<128xi8>
  }
}

