module {
  func.func @non_fold_view_same_source_res_types(%arg0: memref<?xi8>, %arg1: index) -> memref<?xi8> {
    %c0 = arith.constant 0 : index
    %view = memref.view %arg0[%c0][%arg1] : memref<?xi8> to memref<?xi8>
    return %view : memref<?xi8>
  }
}

