"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,3,2,2],f32>) -> !torch.vtensor<[?,?],f32>, sym_name = "torch.aten.flatten.using_ints$flatten_front"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,3,2,2],f32>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.aten.flatten.using_ints"(%arg0, %0, %1) : (!torch.vtensor<[3,3,2,2],f32>, !torch.int, !torch.int) -> !torch.vtensor<[?,?],f32>
    "func.return"(%2) : (!torch.vtensor<[?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

