"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<ui32>, sym_name = "partition_id"}> ({
    %0 = "stablehlo.partition_id"() : () -> tensor<ui32>
    "func.return"(%0) : (tensor<ui32>) -> ()
  }) : () -> ()
}) : () -> ()

