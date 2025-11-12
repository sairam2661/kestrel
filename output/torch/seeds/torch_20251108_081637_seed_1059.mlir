"builtin.module"() ({
  "func.func"() <{function_type = (!torch$vtensor$lt1x1x5x5$ui8gt, !torch$vtensor$lt1x1x5x5$i1gt) -> !torch$vtensor$lt1x1x5x5$i1gt, sym_name = "torch.aten.copy$complex"}> ({
    ^bb0(%arg0: !torch$vtensor$lt1x1x5x5$ui8gt, %arg1: !torch$vtensor$lt1x1x5x5$i1gt):
      %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch$vtensor$ltgt
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch$vtensor$ltgt
      %2 = "torch.constant.int"() <{value = 11 : i64}> : () -> !torch$vtensor$ltgt
      %3 = "torch.constant.none"() : () -> !torch$vtensor$ltgt
      %4 = "torch.constant.bool"() <{value = false}> : () -> !torch$vtensor$ltgt
      %5 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch$vtensor$ltgt
      %6 = "torch.vtensor.literal"() <{value = dense<[[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12], [13, 14, 15]]> : tensor<5x3xi32>}> : () -> !torch$vtensor$lt5x3xi32gt
      %7 = "torch.aten.view"(%6, %0, %1, %0, %1) : (!torch$vtensor$lt5x3xi32gt, !torch$vtensor$ltgt, !torch$vtensor$ltgt, !torch$vtensor$ltgt, !torch$vtensor$ltgt) -> !torch$vtensor$lt1x1x5x5xi32gt
      %8 = "torch.aten.add.Tensor"(%arg1, %7) : (!torch$vtensor$lt1x1x5x5$i1gt, !torch$vtensor$lt1x1x5x5xi32gt) -> !torch$vtensor$lt1x1x5x5xi32gt
      %9 = "torch.aten.eq.Tensor"(%8, %7) : (!torch$vtensor$lt1x1x5x5xi32gt, !torch$vtensor$lt1x1x5x5xi32gt) -> !torch$vtensor$lt1x1x5x5$i1gt
      "func.return"(%9) : (!torch$vtensor$lt1x1x5x5$i1gt) -> ()
  }) : () -> ()
}) : () -> ()