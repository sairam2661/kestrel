"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,16,135,240],f32>) -> !torch.vtensor<[1,16,270,480],f32>, sym_name = "torch.aten.__interpolate.size_list_scale_list.nearest"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,16,135,240],f32>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.constant.str"() <{value = "nearest"}> : () -> !torch.str
    %3 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch.float
    %4 = "torch.prim.ListConstruct"(%3, %3) : (!torch.float, !torch.float) -> !torch.list<float>
    %5 = "torch.aten.__interpolate.size_list_scale_list"(%arg0, %0, %4, %2, %1, %0, %1) : (!torch.vtensor<[1,16,135,240],f32>, !torch.none, !torch.list<float>, !torch.str, !torch.bool, !torch.none, !torch.bool) -> !torch.vtensor<[1,16,270,480],f32>
    "func.return"(%5) : (!torch.vtensor<[1,16,270,480],f32>) -> ()
  }) : () -> ()
}) : () -> ()

