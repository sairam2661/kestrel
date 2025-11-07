"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?],f32>, !torch.vtensor<[3],si64>) -> !torch.vtensor<[?,?,?],f32>, sym_name = "test_resize_nearest_1d"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?],f32>, %arg1: !torch.vtensor<[3],si64>):
    %0 = "torch.constant.none"() : () -> !torch.none
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %4 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %5 = "torch.constant.str"() <{value = "nearest,floor"}> : () -> !torch.str
    %6 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %7 = "torch.aten.select.int"(%arg1, %2, %6) : (!torch.vtensor<[3],si64>, !torch.int, !torch.int) -> !torch.vtensor<[1],si64>
    %8 = "torch.aten.item"(%7) : (!torch.vtensor<[1],si64>) -> !torch.int
    %9 = "torch.prim.ListConstruct"(%8) : (!torch.int) -> !torch.list<int>
    %10 = "torch.aten.__interpolate.size_list_scale_list"(%arg0, %9, %1, %5, %3, %1, %3) : (!torch.vtensor<[?,?,?],f32>, !torch.list<int>, !torch.none, !torch.str, !torch.bool, !torch.none, !torch.bool) -> !torch.vtensor<[?,?,?],f32>
    "func.return"(%10) : (!torch.vtensor<[?,?,?],f32>) -> ()
  }) : () -> ()
}) : () -> ()

