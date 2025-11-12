"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<4xi32>) -> !torch,vector<2xi64>, sym_name = "torch.aten.slice.vector$nonuniform"}> ({
  ^bb0(%arg0: !torch,vector<4xi32> ->  ()):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch,i64
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch,i64
    %2 = "torch.constant.none"() : () -> !torch,none
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch,i64
    %4 = "torch.aten.slice.Tensor"(%arg0, %0, %2, %2, %3) : (!torch,vector<4xi32>, !torch,i64, !torch,none, !torch,none, !torch,i64) -> !torch,vector<2xi32>
    %5 = "torch.constant.float"() <{value = 1.0 : f32}> : () -> !torch,f32
    %6 = "torch.aten.add.Tensor"(%4, %5) : (!torch,vector<2xi32>, !torch,f32) -> !torch,vector<2xi32>
    %7 = "torch.prim.NumToTensor.Scalar"(%6) : (!torch,vector<2xi32>) -> !torch,vector<2xi64>
    "func.return"(%7) : (!torch,vector<2xi64>) -> ()
  }) : () -> ()
}) : () -> ()