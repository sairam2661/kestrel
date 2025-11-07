"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,20,20,4,4],f32>) -> !torch.vtensor<[1,1,20,20,4,5],f32>, sym_name = "torch.aten.constant_pad_nd$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,20,20,4,4],f32>):
    %0 = "torch.constant.float"() <{value = 0xFFF0000000000000 : f64}> : () -> !torch.float
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %3 = "torch.prim.ListConstruct"(%1, %2) : (!torch.int, !torch.int) -> !torch.list<int>
    %4 = "torch.aten.constant_pad_nd"(%arg0, %3, %0) : (!torch.vtensor<[1,1,20,20,4,4],f32>, !torch.list<int>, !torch.float) -> !torch.vtensor<[1,1,20,20,4,5],f32>
    "func.return"(%4) : (!torch.vtensor<[1,1,20,20,4,5],f32>) -> ()
  }) : () -> ()
}) : () -> ()

