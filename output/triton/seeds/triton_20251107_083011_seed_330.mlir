"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xf32>, tensor<128xi32>) -> tensor<128xf32>, sym_name = "mixed_type_op"}> ({
  ^bb0(%arg0: tensor<128xf32>, %arg1: tensor<128xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg scratch
   .scf.0:
    (tensor<128xf32>, tensor<128xi32>, tensor<128xf32>) -> (tensor<128xf32>)

    "ttg.copy"(%arg0, %0) : (tensor<128xf32>, !ttgscratch) -> ()
    "ttg.copy"(%arg1, %0) : (tensor<128xi32>, !ttgscratch) -> ()

    %1 = "ttg.load"(%0) : (!ttgscratch) -> tensor<128xf32>
    %2 = "ttg.load"(%0) : (!ttgscratch) -> tensor<128xi32>

    %3 = "arith.addf"(%1, %1) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %4 = "arith.mulf"(%3, %1) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>

    %5 = "arith.divf"(%4, %3) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
    %6 = "arith.negf"(%5) : (tensor<128xf32>) -> tensor<128xf32>

    "ttg.store"(%6, %0) : (tensor<128xf32>, !ttgscratch) -> ()

    %7 = "ttg.load"(%0) : (!ttgscratch) -> tensor<128xf32>
    "tt.return"(%7) : (tensor<128xf32>) -> ()
  }) : (tensor<128xf32>, tensor<128xi32>) -> tensor<128xf32>
}) : () -> ()