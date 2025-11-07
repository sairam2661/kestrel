"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,512,10],f32>) -> !torch.vtensor<[1,512,10],f32>, sym_name = "torch.aten.avg_pool1d.count_include_pad_unsupported_value"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,512,10],f32>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch.int
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %4 = "torch.prim.ListConstruct"(%1) : (!torch.int) -> !torch.list<int>
    %5 = "torch.prim.ListConstruct"(%0) : (!torch.int) -> !torch.list<int>
    %6 = "torch.prim.ListConstruct"(%0) : (!torch.int) -> !torch.list<int>
    %7 = "torch.aten.avg_pool1d"(%arg0, %4, %5, %6, %2, %3) : (!torch.vtensor<[1,512,10],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool) -> !torch.vtensor<[1,512,10],f32>
    "func.return"(%7) : (!torch.vtensor<[1,512,10],f32>) -> ()
  }) : () -> ()
}) : () -> ()

