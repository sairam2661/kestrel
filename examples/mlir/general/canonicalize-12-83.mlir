"builtin.module"() ({
  "func.func"() <{function_type = (memref<128xi8>) -> memref<128xi8>, sym_name = "fold_view_same_source_result_types"}> ({
  ^bb0(%arg0: memref<128xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "memref.view"(%arg0, %0) : (memref<128xi8>, index) -> memref<128xi8>
    "func.return"(%1) : (memref<128xi8>) -> ()
  }) : () -> ()
}) : () -> ()

