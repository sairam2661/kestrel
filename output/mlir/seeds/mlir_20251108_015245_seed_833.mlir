"builtin.module"() ({
  "func.func"() <{function_type = (!spirv_uniformity, !spirv_uniformity) -> !spirv_uniformity, sym_name = "uniform_combine"}> ({
    ^bb0(%arg0: !spirv_uniformity, %arg1: !spirv_uniformity):
      %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (!spirv_uniformity, !spirv_uniformity) -> i1
      %1 = "arith.select"(%0, %arg0, %arg1) : (i1, !spirv_uniformity, !spirv_uniformity) -> !spirv_uniformity
      "spirv.ReturnValue"(%1) : (!spirv_uniformity) -> ()
  }) : () -> ()
}) : () -> ()