"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xi8>, index) -> memref<?xi8>, sym_name = "non_fold_view_same_source_res_types"}> ({
  ^bb0(%arg0: memref<?xi8>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.view"(%arg0, %0, %arg1) : (memref<?xi8>, index, index) -> memref<?xi8>
    "func.return"(%1) : (memref<?xi8>) -> ()
  }) : () -> ()
}) : () -> ()

