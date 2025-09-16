"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x?xf32>) -> !shape.size, sym_name = "canonicalize_rank_size"}> ({
  ^bb0(%arg0: tensor<1x2x?xf32>):
    %0 = "shape.shape_of"(%arg0) : (tensor<1x2x?xf32>) -> !shape.shape
    %1 = "shape.rank"(%0) : (!shape.shape) -> !shape.size
    "func.return"(%1) : (!shape.size) -> ()
  }) : () -> ()
}) : () -> ()

