"builtin.module"() ({
  "func.func"() <{function_type = (index, memref<?xf64>, f64, index) -> (memref<?xf64>, index), sym_name = "sparse_push_back_n"}> ({
  ^bb0(%arg0: index, %arg1: memref<?xf64>, %arg2: f64, %arg3: index):
    %0:2 = "sparse_tensor.push_back"(%arg0, %arg1, %arg2, %arg3) : (index, memref<?xf64>, f64, index) -> (memref<?xf64>, index)
    "func.return"(%0#0, %0#1) : (memref<?xf64>, index) -> ()
  }) : () -> ()
}) : () -> ()

