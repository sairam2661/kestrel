"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add.Tensor"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32

    %0 = "arith.addi"(%c0_i32, %c1_i32) : (i32, i32) -> i32
    %1 = "arith.subi"(%c3_i32, %c2_i32) : (i32, i32) -> i32

    %2 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.cmpi"("slt", %2, %c3_i32) : (i32, i32) -> i1
    %4 = "arith.select"(%3, %c0_i32, %c1_i32) : (i1, i32, i32) -> i32

    %5 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %6 = "torch.constant.str"() <{value = "floor"}> : () -> !torch_str

    %7 = "torch.aten.add.Tensor"(%arg0, %arg1, %5, %6) : (!torch_vtensor, !torch_vtensor, !torch_int, !torch_str) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()